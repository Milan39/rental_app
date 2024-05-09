part of 'home_cubit.dart';

class HomeState extends Equatable {
  final String userFullName;
  final String avatar;

  const HomeState({
    required this.userFullName,
    required this.avatar,
  });

  @override
  List<Object?> get props => [userFullName, avatar];
}

class HomeInitialState extends HomeState {
  const HomeInitialState({required super.userFullName, required super.avatar});
}
