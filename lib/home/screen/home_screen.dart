import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:ghar_bhada/home/cubit/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import 'package:ghar_bhada/home/cubit/home_cubit/home_cubit.dart';
import 'package:ghar_bhada/home/cubit/room_detail_cubit/home_room_cubit.dart';
import 'package:ghar_bhada/home/widgets/home_screen_layout.dart';
import 'package:ghar_bhada/injection_container.dart';
import 'package:ghar_bhada/profile/screen/profile_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<BottomNavBarCubit>(),
        ),
        BlocProvider(
          create: (context) => sl<HomeCubit>()..fetchUserInfo(),
        ),
      ],
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final user = state.userType;
          return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
            builder: (context, state) {
              return Scaffold(
                floatingActionButton: user == "normal_user"
                    ? const SizedBox.shrink()
                    : FloatingActionButton(
                        onPressed: () async {
                          Object? reload = await context.pushNamed(
                            'add-property',
                          );
                          if (reload != null && context.mounted) {
                            context.read<HomeRoomCubit>().fetchRoomDetails();
                          }
                        },
                        shape: const CircleBorder(),
                        backgroundColor: kPrimaryPurple,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15.h,
                        ),
                      ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
                bottomNavigationBar: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: kSecondaryPurple,
                        offset: const Offset(4, 4),
                        blurRadius: 10,
                        spreadRadius: 10,
                      )
                    ],
                  ),
                  child: AnimatedBottomNavigationBar.builder(
                    itemCount: state.navBarItems.length,
                    gapWidth: 100.w,
                    height: 30.h,
                    tabBuilder: (int index, bool isActive) {
                      final color = isActive ? kPrimaryPurple : Colors.grey;
                      final icon = isActive
                          ? state.navBarItems[index].activeIcon
                          : state.navBarItems[index].icon;
                      return Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 10.r, vertical: 10.r),
                        padding: EdgeInsets.zero,
                        decoration: BoxDecoration(
                            color: isActive
                                ? kPrimaryPurple.withOpacity(0.1)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(50.r)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              icon,
                              color: isActive ? kPrimaryPurple : Colors.grey,
                            ),
                            const SizedBox(width: 4),
                            isActive
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 0),
                                    child: Text(
                                      state.navBarItems[index].label,
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1,
                                        fontSize: 16.sp,
                                        color: color,
                                      ),
                                    ),
                                  )
                                : const SizedBox.shrink()
                          ],
                        ),
                      );
                    },
                    activeIndex: state.currentNavBarIndex,
                    onTap: (index) {
                      context.read<BottomNavBarCubit>().switchNavBarItem(index);
                    },
                    notchSmoothness: NotchSmoothness.defaultEdge,
                    gapLocation: GapLocation.center,
                    splashColor: Colors.white,
                    elevation: 0,
                    splashSpeedInMilliseconds: 0,
                  ),
                ),
                body: SafeArea(
                  child: BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
                    builder: (context, state) {
                      if (state.navBarItems[state.currentNavBarIndex].slug ==
                          'home') {
                        return const HomeScreenTab();
                      } else if (state
                              .navBarItems[state.currentNavBarIndex].slug ==
                          'profile') {
                        return const ProfileScreen();
                      }
                      return Container();
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
