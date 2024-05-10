import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'room_details_state.dart';

class RoomDetailsCubit extends Cubit<RoomDetailsState> {
  RoomDetailsCubit() : super(RoomDetailsInitial());
}
