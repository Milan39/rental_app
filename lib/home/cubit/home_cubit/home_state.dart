part of 'home_cubit.dart';

class HomeState extends Equatable {
  final String userFullName;
  final String avatar;
  final String email;
  final String userType;

  const HomeState({
    required this.userFullName,
    required this.avatar,
    required this.email,
    required this.userType,
  });

  @override
  List<Object?> get props => [userFullName, avatar, email, userType];
}

class HomeInitialState extends HomeState {
  const HomeInitialState({
    required super.userFullName,
    required super.avatar,
    required super.email,
    required super.userType,
  });
}
