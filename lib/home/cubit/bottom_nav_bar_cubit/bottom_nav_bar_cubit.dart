import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ghar_bhada/home/entities/home_entity.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit()
      : super(
          BottomNavBarState(
            currentNavBarIndex: 0,
            navBarItems: [
              NavBarItemEntity(
                  label: 'Home',
                  slug: 'home',
                  icon: 'assets/icons/inactive_home.svg',
                  activeIcon: 'assets/icons/home.svg'),
              NavBarItemEntity(
                  label: 'profile',
                  slug: 'profile',
                  icon: 'assets/icons/inactive_profile.svg',
                  activeIcon: 'assets/icons/active_profile.svg'),
            ],
          ),
        );

  void switchNavBarItem(int navBarItemIndex) {
    emit(state.copyWith(
      currentNavBarIndex: navBarItemIndex,
    ));
  }
}
