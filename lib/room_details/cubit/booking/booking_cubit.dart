import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ghar_bhada/room_details/model/room_detail_model.dart';
import 'package:ghar_bhada/room_details/repository/room_detail_repository.dart';

part 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  final RoomRepository repository;

  BookingCubit({required this.repository}) : super(const BookingState());

  Future<void> bookRoom({required String roomId}) async {
    try {
      emit(BookingLoading());
      final bookingResponse = await repository.bookRoom(roomId: roomId);
      emit(BookingSuccess(bookingResponse: bookingResponse));
    } on DioException catch (e) {
      emit(BookingFailure(message: e.toString()));
    }
  }
}
