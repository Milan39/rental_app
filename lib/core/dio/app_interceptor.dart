import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ghar_bhada/auth/models/login_model.dart';
import 'package:ghar_bhada/core/dio/api_client.dart';
import 'package:logger/logger.dart';
import '../models/error_modal.dart';
import '../models/field_error_model.dart';
import '../storage/storage.dart';
import 'connectivity_request_retrier.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);
class AppInterceptor extends Interceptor {
  final Dio dio;
  final SecureStorage _secureStorage = SecureStorage();
  final DioConnectivityRequestRetrier dioConnectivityRequestRetrier;

  AppInterceptor( {
    required this.dio,
    required this.dioConnectivityRequestRetrier,
  });

  Future<String?> getAccessToken() async {
    final accessToken = await _secureStorage.readAccessToken();
    return accessToken;
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final accessToken = await getAccessToken();
    if (accessToken !=null) {
      options.headers.addAll({
        'Authorization': 'JWT $accessToken',
        'Content-Type': 'application/json',
      });
    } else {
      options.headers.addAll({
        'Content-Type': 'application/json',
      });
    }

    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    logger.w(response.statusCode);
    logger.w(response.data);
    logger.w(response.requestOptions.path);
    return handler.next(response);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    logger.w(err.response?.statusCode);
    logger.w(err.response?.data);
    logger.w(err.requestOptions.path);
    if (err.error != null && err.error is SocketException) {
      //Checking if the error type is socket exception
      try {
        return await dioConnectivityRequestRetrier.scheduleRequestRetry(
            err, handler);
      } catch (e) {
        super.onError(
            NoInternetConnectionException(err.requestOptions), handler);
        return handler.next(err);
      }
    } else {
      logger.w(err.type);
      switch (err.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.connectionError:
        case DioExceptionType.receiveTimeout:
          super.onError(DeadlineExceedException(err.requestOptions), handler);
          break;
        case DioExceptionType.badResponse:
          String? refreshToken = await _secureStorage.readRefreshToken();
          logger.w(err.response!.statusCode);
          logger.w(refreshToken);

          if (err.response!.statusCode == 401 && refreshToken != null) {
            RequestOptions origin = err.response!.requestOptions;

            String? refreshToken = await _secureStorage.readRefreshToken();
            Map refreshData = {"refresh": refreshToken};
            await _secureStorage.removeRefreshToken();
            try {
              Response<dynamic> response =
              await ApiClient().dio.post('v1/auth/login-refresh', data: refreshData);
              if (response.statusCode == 200) {
                LoginResponseModel loginResponseModel =
                LoginResponseModel.fromJson(response.data);
                _secureStorage.writeAccessToken(loginResponseModel.access);
                _secureStorage.writeRefreshToken(loginResponseModel.refresh);
                origin.headers['Authorization'] = 'JWT ${loginResponseModel.access}';
                final newResponse = await ApiClient().dio.request(origin.path,
                    data: origin.data,
                    options: Options(
                      headers: origin.headers,
                      method: origin.method,
                    ));
                return handler.resolve(newResponse);
              }
            } catch (e) {
              return handler.next(err);
            }
          } else {
            switch (err.response?.statusCode) {
              case 400:
                super.onError(
                    BadRequestException(err.requestOptions, err.response!),
                    handler);
                break;
              case 401:
                super.onError(
                    UnauthorizedException(err.requestOptions, err.response!),
                    handler);
                break;

              case 404:
                super.onError(NotFoundException(err.requestOptions), handler);
                break;
              case 406:
                // throw UnauthorizedException(err.requestOptions, err.response!);
                super.onError(
                    UnauthorizedException(err.requestOptions, err.response!),
                    handler);
                break;
              // case 409:
              //   super.onError(ConflictException(err.requestOptions), handler);
              //   break;

              case 500:
                super.onError(
                    InternalServerErrorException(err.requestOptions), handler);
                break;

              default:
                super.onError(
                    BadRequestException(err.requestOptions, err.response!),
                    handler);
                break;
            }
          }
        case DioExceptionType.cancel:
          break;
        case DioExceptionType.badCertificate:
          break;
        case DioExceptionType.unknown:
          super.onError(
              NoInternetConnectionException(err.requestOptions), handler);
          break;
      }
    }
  }
}

class BadRequestException extends DioException {
  BadRequestException(RequestOptions r, Response res)
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    if (response!.data['errors'][0]['field'] == 'non_field_errors') {
      final errorMessage = ErrorModal.fromJson(response!.data);
      return errorMessage.errors[0].message[0];
    } else if (response!.data['errors'][0]['field'] == 'field_errors') {
      final errorMessage = FieldErrorModal.fromJson(response!.data);
      return errorMessage.errors[0].message.values.first;
    } else {
      // final errorMessage = FieldErrorModal.fromJson(response!.data);
      // return errorMessage.errors[0].message.values.first;
      final errorMessage = ErrorModal.fromJson(response!.data);
      return errorMessage.errors[0].message[0];
    }
  }
}

class InternalServerErrorException extends DioException {
  InternalServerErrorException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Unknown error occurred, please try again later.';
  }
}

class ConflictException extends DioException {
  ConflictException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Sorry! A conflict has occurred';
  }
}

class UnauthorizedException extends DioException {
  UnauthorizedException(RequestOptions r, Response res)
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    final errorMessage = ErrorModal.fromJson({
      "errors": [
        response!.data['errors'][0]
      ]
    });
    return errorMessage.errors[0].message[0];
  }
}

class NotFoundException extends DioException {
  NotFoundException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Sorry! the requested information could not be found';
  }
}

class NoInternetConnectionException extends DioException {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Please check your internet connection and try again.';
  }
}

class DeadlineExceedException extends DioException {
  DeadlineExceedException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The connection has timed out, please try again.';
  }
}

class ActivationException extends DioException {
  ActivationException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Sorry, Something went wrong';
  }
}
