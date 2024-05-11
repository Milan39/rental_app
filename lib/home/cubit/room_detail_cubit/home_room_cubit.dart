import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ghar_bhada/home/model/home_room_model.dart';
import 'package:ghar_bhada/home/repository/home_repository.dart';

part 'home_room_state.dart';

class HomeRoomCubit extends Cubit<HomeRoomState> {
  final HomeRepository repository;

  HomeRoomCubit({required this.repository})
      : super(const HomeRoomState()) {
    fetchRoomDetails();
  }

  Future<void> fetchRoomDetails() async {
    emit(HomeRoomLoading());
    try {
      final roomDetails = await repository.fetchRoomDetails();
      emit(HomeRoomLoaded(rooms: roomDetails));
    } on DioException catch (e) {
      emit(HomeRoomFailure(message: e.toString()));
    }
  }
}
