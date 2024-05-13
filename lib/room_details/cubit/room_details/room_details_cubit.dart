import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:ghar_bhada/auth/entities/auth_entity.dart';
import 'package:ghar_bhada/core/storage/storage.dart';
import 'package:ghar_bhada/room_details/model/room_detail_model.dart';
import 'package:ghar_bhada/room_details/repository/room_detail_repository.dart';

part 'room_details_state.dart';

class RoomDetailsCubit extends Cubit<RoomDetailsState> {
  final SecureStorage secureStorage;
  final RoomRepository repository;

  RoomDetailsCubit({required this.secureStorage, required this.repository})
      : super(const RoomDetailsState());

  Future<void> fetchRoomDetails({required String roomId}) async {
    UserEntity? user = await secureStorage.readUser();

    try {
      emit(RoomDetailsLoading());
      final roomDetails = await repository.fetchRoomDetails(roomId: roomId);
      emit(RoomDetailsLoaded(
          roomDetails: roomDetails,
          userType: user!.userType
      ));
    } on DioException catch (e) {
      emit(RoomDetailsFailure(message: e.toString()));
    }
  }
}
