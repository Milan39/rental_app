import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:ghar_bhada/auth/models/login_model.dart';
import 'package:ghar_bhada/auth/repository/auth_repository.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepository repository;
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  RegisterCubit({required this.repository}) : super(const RegisterState());

  Future<void> registerUser() async {
    if (formKey.currentState!.isValid) {
      emit(RegisterLoading());
      final registerPayload = RegisterPayload(
        phoneNumber: formKey.currentState!.value['phone'],
        email: formKey.currentState!.value['email'],
        fullName: formKey.currentState!.value['name'],
        password: formKey.currentState!.value['password'],
      );
      print("registerPayload---");
      print(registerPayload);

      try {
        final registerResponse =
            await repository.registerUser(registerPayload: registerPayload);
        emit(RegisterSuccess(registerResponse: registerResponse));
      } on DioException catch (e) {
        emit(RegisterFailure(message: e.toString()));
      }
    }
  }
}
