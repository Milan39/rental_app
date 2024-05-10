import 'package:get_it/get_it.dart';
import 'package:ghar_bhada/auth/cubit/login_cubit.dart';
import 'package:ghar_bhada/home/cubit/home_cubit/home_cubit.dart';
import 'package:ghar_bhada/splash/cubit/splash_cubit.dart';

import 'auth/repository/auth_repository.dart';
import 'core/dio/api_client.dart';
import 'core/storage/storage.dart';
import 'home/cubit/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Cubit
  sl.registerFactory(
      () => LoginCubit(authRepository: sl(), secureStorage: sl()));
  sl.registerFactory(() => BottomNavBarCubit());
  sl.registerFactory(() => SplashCubit(secureStorage: sl()));
  sl.registerFactory(() => HomeCubit(secureStorage: sl()));

  // Repository
  sl.registerLazySingleton(() => AuthRepository(apiClient: sl()));

  //! External
  sl.registerLazySingleton(() => ApiClient());
  sl.registerLazySingleton(() => SecureStorage());
}
