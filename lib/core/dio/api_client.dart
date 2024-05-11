import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

import 'app_interceptor.dart';
import 'connectivity_request_retrier.dart';

class ApiClient {
  final dio = createDio();

  ApiClient._internal();

  static final _singleton = ApiClient._internal();

  factory ApiClient() {
    return _singleton;
  }

  static Dio createDio() {
    var dio = Dio(BaseOptions(
        baseUrl: "http://46.250.243.243:8080/",
        contentType: "application/json",
        connectTimeout: const Duration(seconds: 15000),
        receiveTimeout: const Duration(seconds: 15000),
        sendTimeout: const Duration(seconds: 15000)));

    dio.interceptors.addAll({
      AppInterceptor(
          dio: dio,
          dioConnectivityRequestRetrier: DioConnectivityRequestRetrier(
            dio: dio,
            connectivity: Connectivity(),

          ),
      )
    });

    return dio;
  }
}
