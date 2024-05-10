part of 'room_details_cubit.dart';

class RoomDetailsState extends Equatable {
  const RoomDetailsState();

  @override
  List<Object?> get props => [];
}

class RoomDetailsLoading extends RoomDetailsState {}

class RoomDetailsLoaded extends RoomDetailsState {}

class RoomDetailsFailure extends RoomDetailsState {
  final String message;

  const RoomDetailsFailure({required this.message});

  @override
  List<Object> get props => [message];
}
