import 'package:dio/dio.dart';
import 'package:ghar_bhada/core/dio/api_client.dart';
import 'package:ghar_bhada/room_details/model/room_detail_model.dart';

class RoomRepository {
  final ApiClient apiClient;

  RoomRepository({required this.apiClient});

  Future<RoomDetailModel> fetchRoomDetails({required String roomId}) async {
    Response response = await apiClient.dio.get('/v1/room/$roomId/room-detail');
    return RoomDetailModel.fromJson(response.data);
  }

  Future<BookingResponse> bookRoom({required String roomId}) async {
    Response response =
        await apiClient.dio.post('/v1/booking/book-room', data: {
      "room": roomId,
    });
    return BookingResponse.fromJson(response.data);
  }

  Future<String> payment({required String bookingId}) async {
    Response response = await apiClient.dio
        .get('v1/payment/booking/$bookingId/khalti-initiate');

    return response.data;
  }

  Future<PaymentCheckoutResponse> paymentCheckOut({
    required String bookingId,
  }) async {
    Response response = await apiClient.dio
        .get('v1/payment/booking/$bookingId/khalti-checkout');
    return PaymentCheckoutResponse.fromJson(response.data);
  }
}
