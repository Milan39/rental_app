import 'package:dio/dio.dart';
import 'package:ghar_bhada/core/dio/api_client.dart';
import 'package:ghar_bhada/home/model/home_room_model.dart';

class HomeRepository {
  final ApiClient apiClient;

  HomeRepository({required this.apiClient});

  Future<List<HomeRoomModel>> fetchRoomDetails({String? query}) async {
    Response response = await apiClient.dio.get(
      '/v1/room/list-room',
      queryParameters: {"pagination": false, "search": query ?? ""},
    );
    final List<dynamic> responseData = response.data;
    List<HomeRoomModel> rooms =
        responseData.map((data) => HomeRoomModel.fromJson(data)).toList();
    return rooms;
  }

  Future<List<HomeRoomModel>> fetchLandLordRooms({String? query}) async {
    Response response = await apiClient.dio.get(
      '/v1/room/list-landlord-room',
      queryParameters: {"pagination": false, "search": query ?? ""},
    );
    final List<dynamic> responseData = response.data;
    List<HomeRoomModel> rooms =
        responseData.map((data) => HomeRoomModel.fromJson(data)).toList();
    return rooms;
  }
}
