import 'package:dio/dio.dart';
import 'package:ghar_bhada/core/dio/api_client.dart';

class LandLordRepository {
  final ApiClient apiClient;

  const LandLordRepository({required this.apiClient});

  Future<void> addRoom({required FormData addRoomPayLoad}) async {
    Response response = await apiClient.dio.post(
      'v1/room/add-room',
      data: addRoomPayLoad,

    );
    return response.data;
  }
}
