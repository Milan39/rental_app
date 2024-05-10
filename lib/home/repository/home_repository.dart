import 'package:dio/dio.dart';
import 'package:ghar_bhada/core/dio/api_client.dart';
import 'package:ghar_bhada/home/model/room_detail_model.dart';

class HomeRepository {
  final ApiClient apiClient;

  HomeRepository({required this.apiClient});

  Future<List<RoomDetailModel>> fetchRoomDetails() async {
    Response response = await apiClient.dio.get(
      '/v1/room/list-room',
      queryParameters: {"pagination": false},
    );
    final List<dynamic> responseData = response.data;
    List<RoomDetailModel> rooms =
        responseData.map((data) => RoomDetailModel.fromJson(data)).toList();
    return rooms;
  }
}
