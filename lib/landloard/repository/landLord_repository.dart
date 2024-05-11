import 'package:dio/dio.dart';
import 'package:ghar_bhada/core/dio/api_client.dart';
import 'package:ghar_bhada/landloard/property/model/add_room_model/add_room_model.dart';

class LandLordRepository {
  final ApiClient apiClient;

  const LandLordRepository({required this.apiClient});

  Future<void> addRoom({required AddRoomPayLoad addRoomPayLoad}) async {
    Response response = await apiClient.dio.post(
      'v1/room/add-room',
      data: addRoomPayLoad.toJson(),
    );
    return response.data;
  }
}
