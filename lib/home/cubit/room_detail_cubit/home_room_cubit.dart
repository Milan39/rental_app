import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ghar_bhada/core/storage/storage.dart';
import 'package:ghar_bhada/home/model/home_room_model.dart';
import 'package:ghar_bhada/home/repository/home_repository.dart';

part 'home_room_state.dart';

class HomeRoomCubit extends Cubit<HomeRoomState> {
  final HomeRepository repository;
  final SecureStorage secureStorage;

  HomeRoomCubit({
    required this.repository,
    required this.secureStorage,
  }) : super(const HomeRoomState()) {
    fetchRoomDetails();
  }

  Future<void> fetchRoomDetails({String? query}) async {
    emit(HomeRoomLoading());
    try {
      final user = await secureStorage.readUser();
      if (user?.userType == "normal_user") {
        final roomDetails = await repository.fetchRoomDetails(query: query);
        if (roomDetails.isNotEmpty) {
          emit(HomeRoomLoaded(rooms: roomDetails));
        } else {
          emit(const SearchNotFound(message: "No Result found"));
        }
      } else {
        final roomDetails = await repository.fetchLandLordRooms();
        emit(HomeRoomLoaded(rooms: roomDetails));
      }
    } on DioException catch (e) {
      emit(HomeRoomFailure(message: e.toString()));
    }
  }
}
