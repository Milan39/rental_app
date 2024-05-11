import 'package:equatable/equatable.dart';

enum LoginStatus {
  formInvalid,
  authenticating,
  formValid,
  validating,
  authenticated,
  unauthenticated,
}

class LandLordLoginState extends Equatable {
  final LoginStatus status;
  final String message;
  final bool hidePassword;

  const LandLordLoginState({
    this.status = LoginStatus.formInvalid,
    this.hidePassword = true,
    this.message = "",
  });

  LandLordLoginState copyWith({
    LoginStatus? status,
    String? message,
    bool? hidePassword,
    Map<String, dynamic>? formValues,
  }) =>
      LandLordLoginState(
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
