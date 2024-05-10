import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ghar_bhada/home/model/room_detail_model.dart';
import 'package:ghar_bhada/home/repository/home_repository.dart';

part 'room_details_state.dart';

class RoomDetailsCubit extends Cubit<RoomDetailsState> {
  final HomeRepository repository;

  RoomDetailsCubit({required this.repository})
      : super(const RoomDetailsState()) {
    fetchRoomDetails();
  }

  Future<void> fetchRoomDetails() async {
    emit(RoomDetailLoading());
    try {
      final roomDetails = await repository.fetchRoomDetails();
      emit(RoomDetailsLoaded(rooms: roomDetails));
    } on DioException catch (e) {
      emit(RoomDetailsFailure(message: e.toString()));
    }
  }
}
