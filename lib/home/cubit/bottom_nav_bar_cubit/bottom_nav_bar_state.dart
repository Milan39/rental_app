part of 'bottom_nav_bar_cubit.dart';


class BottomNavBarState extends Equatable {

  final int currentNavBarIndex;
  final  List<NavBarItemEntity> navBarItems;

  const BottomNavBarState({required this.currentNavBarIndex, required this.navBarItems});

  BottomNavBarState copyWith({
    int? currentNavBarIndex,
    List<NavBarItemEntity>? navBarItems,
  }) =>
      BottomNavBarState(
        currentNavBarIndex: currentNavBarIndex ?? this.currentNavBarIndex,
        navBarItems: navBarItems ?? this.navBarItems,
      );
  @override
  List<Object> get props => [currentNavBarIndex, navBarItems];
}
