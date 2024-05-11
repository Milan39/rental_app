import 'package:equatable/equatable.dart';

enum Status {
  formInvalid,
  authenticating,
  formValid,
  validating,
  authenticated,
  unauthenticated,
}

class LoginState extends Equatable {
  final Status status;
  final String message;
  final bool hidePassword;

  const LoginState({
    this.status = Status.formInvalid,
    this.hidePassword = true,
    this.message = "",
  });

  LoginState copyWith({
    Status? status,
    String? message,
    bool? hidePassword,
    Map<String, dynamic>? formValues,
  }) =>
      LoginState(
          status: status ?? this.status,
          message: message ?? this.message,
          hidePassword: hidePassword ?? this.hidePassword,
      );

  @override
  List<Object> get props => [
    status,
    message,
    hidePassword,
  ];
}
