import 'package:get_it/get_it.dart';
import 'package:ghar_bhada/auth/cubit/lanloard_login/land_loard_login_cubit.dart';
import 'package:ghar_bhada/auth/cubit/login_cubit.dart';
import 'package:ghar_bhada/home/cubit/home_cubit/home_cubit.dart';
import 'package:ghar_bhada/home/repository/home_repository.dart';
import 'package:ghar_bhada/profile/cubit/logout_cubit.dart';
import 'package:ghar_bhada/room_details/cubit/booking/booking_cubit.dart';
import 'package:ghar_bhada/room_details/cubit/room_details/room_details_cubit.dart';
import 'package:ghar_bhada/room_details/repository/room_detail_repository.dart';
import 'package:ghar_bhada/splash/cubit/splash_cubit.dart';

import 'auth/repository/auth_repository.dart';
import 'core/dio/api_client.dart';
import 'core/storage/storage.dart';
import 'home/cubit/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import 'home/cubit/room_detail_cubit/home_room_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Cubit
  sl.registerFactory(
      () => LoginCubit(authRepository: sl(), secureStorage: sl()));
  sl.registerFactory(
      () => LandLordLoginCubit(authRepository: sl(), secureStorage: sl()));
  sl.registerFactory(() => BottomNavBarCubit());
  sl.registerFactory(() => SplashCubit(secureStorage: sl()));
  sl.registerFactory(() => HomeCubit(secureStorage: sl()));
  sl.registerFactory(
      () => HomeRoomCubit(repository: sl(), secureStorage: sl()));
  sl.registerFactory(() => RoomDetailsCubit(repository: sl()));
  sl.registerFactory(() => LogoutCubit(secureStorage: sl()));
  sl.registerFactory(() => BookingCubit( repository: sl()));

  // Repository
  sl.registerLazySingleton(() => AuthRepository(apiClient: sl()));
  sl.registerLazySingleton(() => HomeRepository(apiClient: sl()));
  sl.registerLazySingleton(() => RoomRepository(apiClient: sl()));

  //! External
  sl.registerLazySingleton(() => ApiClient());
  sl.registerLazySingleton(() => SecureStorage());
}
