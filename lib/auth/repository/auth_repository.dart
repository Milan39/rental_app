// import 'package:ghar_bhada/auth/models/auth_model.dart';
// import 'package:ghar_bhada/core/dio/api_client.dart';
//
// class AuthRepository {
//   final ApiClient apiClient;
//
//   AuthRepository({required this.apiClient});
//   Future<LoginResponseModel> loginUser(
//       LoginPayloadModel loginPayloadModel) async {
//     final response = await apiClient.dio.post("v1/auth/organizer-staff/login",
//         data: loginPayloadModel.toJson());
//     return LoginResponseModel.fromJson(response.data);
//   }
//
// }
