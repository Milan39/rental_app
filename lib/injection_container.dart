import 'package:get_it/get_it.dart';
import 'auth/login/cubit/login_cubit.dart';
import 'auth/repository/auth_repository.dart';
import 'core/dio/api_client.dart';
import 'core/storage/storage.dart';
import 'home/cubit/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Cubit
  // sl.registerFactory(
  //         () => LoginCubit(authRepository: sl(), secureStorage: sl()));
  sl.registerFactory(() => BottomNavBarCubit());


  // Repository
  // sl.registerLazySingleton(() => AuthRepository(apiClient: sl()));


  //! External
  // sl.registerLazySingleton(() => ApiClient());
  sl.registerLazySingleton(() => SecureStorage());
}
