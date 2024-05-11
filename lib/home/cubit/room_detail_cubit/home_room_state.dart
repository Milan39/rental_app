part of 'home_room_cubit.dart';

class HomeRoomState extends Equatable {
  const HomeRoomState();

  @override
  List<Object?> get props => [];
}

class HomeRoomLoading extends HomeRoomState {}

class HomeRoomLoaded extends HomeRoomState {
  final List<HomeRoomModel> rooms;

  const HomeRoomLoaded({
    required this.rooms,
  });

  @override
  List<Object> get props => [rooms];
}

class HomeRoomFailure extends HomeRoomState {
  final String message;

  const HomeRoomFailure({required this.message});

  @override
  List<Object> get props => [message];
}
