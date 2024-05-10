import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ghar_bhada/auth/entities/auth_entity.dart';
import 'package:ghar_bhada/core/storage/storage.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final SecureStorage secureStorage;

  HomeCubit({required this.secureStorage})
      : super(
          const HomeInitialState(
            userFullName: 'GharBhada User',
            avatar:
                "https://revel-dev.s3.amazonaws.com/media/avatar/default_avatar.png", email: 'gharbhada@gmail.com',
          ),
        );

  Future<void> fetchUserInfo() async {
    UserEntity? user = await secureStorage.readUser();
    emit(HomeState(userFullName: user!.fullName, avatar: user.avatar, email: user.email));
  }
}
