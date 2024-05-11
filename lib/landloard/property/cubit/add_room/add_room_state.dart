part of 'add_room_cubit.dart';

class AddRoomState extends Equatable {
  const AddRoomState();

  @override
  List<Object?> get props => [];
}

class AddRoomLoading extends AddRoomState {}

class AddRoomSuccess extends AddRoomState {
  final String message;

  const AddRoomSuccess({required this.message});

  @override
  List<Object?> get props => [message];
}

class AddRoomFailure extends AddRoomState {
  final String message;

  const AddRoomFailure({required this.message});

  @override
  List<Object?> get props => [message];
}
