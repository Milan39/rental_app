part of 'room_details_cubit.dart';

class RoomDetailsState extends Equatable {
  const RoomDetailsState();

  @override
  List<Object?> get props => [];
}

class RoomDetailLoading extends RoomDetailsState {}

class RoomDetailsLoaded extends RoomDetailsState {
  final List<RoomDetailModel> rooms;

  const RoomDetailsLoaded({
    required this.rooms,
  });

  @override
  List<Object> get props => [rooms];
}

class RoomDetailsFailure extends RoomDetailsState {
  final String message;

  const RoomDetailsFailure({required this.message});

  @override
  List<Object> get props => [message];
}
