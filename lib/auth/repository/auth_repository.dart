import 'package:ghar_bhada/auth/models/login_model.dart';
import 'package:ghar_bhada/core/dio/api_client.dart';

class AuthRepository {
  final ApiClient apiClient;

  AuthRepository({required this.apiClient});

  Future<LoginResponseModel> loginUser(
    LoginPayLoadModel loginPayloadModel,
  ) async {
    final response = await apiClient.dio
        .post("v1/auth/normal-user-login", data: loginPayloadModel.toJson());
    return LoginResponseModel.fromJson(response.data);
  }

  Future<LoginResponseModel> loginLandLord(
    LoginPayLoadModel loginPayloadModel,
  ) async {
    final response = await apiClient.dio
        .post("v1/auth/landloard-user/login", data: loginPayloadModel.toJson());
    return LoginResponseModel.fromJson(response.data);
  }

  Future<RegisterResponse> registerUser({
    required RegisterPayload registerPayload,
  }) async {
    final response = await apiClient.dio.post(
      '/v1/auth/normal-user-register',
      data: registerPayload.toJson(),
    );
    return RegisterResponse.fromJson(response.data);
  }
}
