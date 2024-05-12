import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:ghar_bhada/auth/cubit/landlord/login/land_loard_login_state.dart';
import 'package:ghar_bhada/auth/entities/auth_entity.dart';
import 'package:ghar_bhada/auth/models/login_model.dart';
import 'package:ghar_bhada/auth/repository/auth_repository.dart';
import 'package:ghar_bhada/core/storage/storage.dart';


class LandLordLoginCubit extends Cubit<LandLordLoginState> {
  final SecureStorage secureStorage;
  final AuthRepository authRepository;

  // final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  LandLordLoginCubit({
    required this.authRepository,
    required this.secureStorage,
  }) : super(const LandLordLoginState()) {
    checkAuthenticationStatus();
  }

  Future<void> landLordLogin({
    required GlobalKey<FormBuilderState> formKey,
  }) async {
    emit(state.copyWith(status: LoginStatus.authenticating));
    final loginPayload = LoginPayLoadModel(
      username: formKey.currentState!.value['email'],
      password: formKey.currentState!.value['password'],
    );
    try {
      final loginResponse = await authRepository.loginLandLord(loginPayload);
      // Save user
      await secureStorage.writeUser(
        UserEntity(
          id: loginResponse.user.id,
          fullName: loginResponse.user.fullName,
          accessToken: loginResponse.access,
          refreshToken: loginResponse.refresh,
          avatar: loginResponse.user.avatar,
          email: loginResponse.user.email,
          userType: loginResponse.user.userType,
        ),
      );

      emit(state.copyWith(status: LoginStatus.authenticated));
    } on DioException catch (e) {
      formKey.currentState?.fields['password']?.invalidate(e.toString());
      emit(state.copyWith(
        status: LoginStatus.unauthenticated,
        message: e.toString(),
      ));
    }
  }

// to check login status
  Future<void> checkAuthenticationStatus() async {
    final userEntity = await secureStorage.readUser();
    final bool isAuthenticated = userEntity != null;
    emit(state.copyWith(
        status:
        isAuthenticated ? LoginStatus.authenticated : LoginStatus.unauthenticated));
  }

  void togglePasswordVisibility() {
    emit(state.copyWith(hidePassword: !state.hidePassword));
  }
}
