import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ghar_bhada/core/storage/storage.dart';

enum LogoutState {
  initial,
  inProcess,
  failed,
  success,
}

class LogoutCubit extends Cubit<LogoutState> {
  final SecureStorage secureStorage;

  LogoutCubit({required this.secureStorage}) : super(LogoutState.initial);

  Future<void> logoutUser() async {
    emit(LogoutState.inProcess);
      await secureStorage.logoutUser();
      emit(LogoutState.success);
  }
}
