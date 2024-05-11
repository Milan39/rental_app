import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:ghar_bhada/room_details/model/room_detail_model.dart';
import 'package:ghar_bhada/room_details/repository/room_detail_repository.dart';

part 'room_details_state.dart';

class RoomDetailsCubit extends Cubit<RoomDetailsState> {
  final RoomRepository repository;

  RoomDetailsCubit({required this.repository})
      : super(const RoomDetailsState());

  Future<void> fetchRoomDetails({required String roomId}) async {
    try {
      emit(RoomDetailsLoading());
      final roomDetails = await repository.fetchRoomDetails(roomId: roomId);
      emit(RoomDetailsLoaded(roomDetails: roomDetails));
    } on DioException catch (e) {
      emit(RoomDetailsFailure(message: e.toString()));
    }
  }
}
