import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ghar_bhada/core/storage/storage.dart';
enum SplashStatus { initial, authenticated, unauthorized }

class SplashCubit extends Cubit<SplashStatus> {
  final SecureStorage secureStorage;
  SplashCubit({required this.secureStorage}) : super((SplashStatus.initial));

  Future<void> loadApp() async {
    final userEntity = await secureStorage.readUser();
    final bool isAuthenticated = userEntity != null;
    await Future.delayed(const Duration(seconds: 2));
    if (!isAuthenticated) {
      emit(SplashStatus.unauthorized);
    } else {
      emit(SplashStatus.authenticated);
    }
  }
}
