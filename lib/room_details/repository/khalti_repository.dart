

import 'package:ghar_bhada/core/dio/api_client.dart';
import 'package:ghar_bhada/room_details/model/room_detail_model.dart';

class KhaltiRepository {
  final ApiClient apiClient;

  KhaltiRepository({required this.apiClient});

  // Login
  Future<InitiateKhaltiResponseModel> initiateKhalti({required String bookingId}) async {
    final response = await apiClient.dio.get("/v1/payment/booking/$bookingId/khalti-initiate");
    return InitiateKhaltiResponseModel.fromJson(response.data);
  }
  Future<KhaltiCheckoutModel> khaltiCheckout({required String bookingId, required KhaltiCheckoutModel khaltiCheckoutPayload}) async {
    final response = await apiClient.dio.post(
      "/v1/payment/booking/$bookingId/khalti-checkout",
      data: khaltiCheckoutPayload.toJson(),

    );
    return KhaltiCheckoutModel.fromJson(response.data);
  }
}
