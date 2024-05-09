import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:ghar_bhada/auth/models/auth_model.dart';
import 'package:ghar_bhada/auth/repository/auth_repository.dart';
import 'package:ghar_bhada/core/storage/storage.dart';


import '../../entities/auth_entity.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final SecureStorage secureStorage;
  final AuthRepository authRepository;
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  LoginCubit({
    required this.authRepository,
    required this.secureStorage,
  }) : super(const LoginState()) {
    checkAuthenticationStatus();
  }

  Future<void> authenticate() async {
    if (formKey.currentState!.isValid) {
      emit(state.copyWith(status: Status.authenticating));
      final loginPayload = LoginPayloadModel(
        username: formKey.currentState!.value['email'],
        password: formKey.currentState!.value['password'],
      );
      try {
        final loginResponse = await authRepository.loginUser(loginPayload);
        // Save user
        await secureStorage.writeUser(UserEntity(
          id: loginResponse.user.id,
          fullName: loginResponse.user.fullName,
          accessToken: loginResponse.access,
          refreshToken: loginResponse.refresh,
          avatar: loginResponse.user.avatar,
        ));
        emit(state.copyWith(status: Status.authenticated));
      } on DioException catch (e) {
        formKey.currentState?.fields['password']?.invalidate(e.toString());
        emit(state.copyWith(
          status: Status.unauthenticated,
          message: e.toString(),
        ));
      }
    }
  }

// to check login status
  Future<void> checkAuthenticationStatus() async {
    final userEntity = await secureStorage.readUser();
    final bool isAuthenticated = userEntity != null;
    emit(state.copyWith(
        status:
            isAuthenticated ? Status.authenticated : Status.unauthenticated));
  }

  void togglePasswordVisibility() {
    emit(state.copyWith(hidePassword: !state.hidePassword));
  }
}
