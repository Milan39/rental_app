part of 'register_cubit.dart';

class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object?> get props => [];
}

class RegisterLoading extends RegisterState {}

class RegisterSuccess extends RegisterState {
  final RegisterResponse registerResponse;

  const RegisterSuccess({required this.registerResponse});

  @override
  List<Object?> get props => [registerResponse];
}

class RegisterFailure extends RegisterState {
  final String message;

  const RegisterFailure({required this.message});

  @override
  List<Object?> get props => [message];
}
