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
}
