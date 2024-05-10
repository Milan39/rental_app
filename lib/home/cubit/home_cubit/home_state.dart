part of 'home_cubit.dart';

class HomeState extends Equatable {
  final String userFullName;
  final String avatar;
  final String email;

  const HomeState({
    required this.userFullName,
    required this.avatar,
    required this.email,
  });

  @override
  List<Object?> get props => [userFullName, avatar, email];
}

class HomeInitialState extends HomeState {
  const HomeInitialState({
    required super.userFullName,
    required super.avatar,
    required super.email,
  });
}
