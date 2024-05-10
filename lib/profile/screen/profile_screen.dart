import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:ghar_bhada/home/cubit/home_cubit/home_cubit.dart';
import 'package:ghar_bhada/injection_container.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl<HomeCubit>(),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return Column(
              children: [
                SizedBox(
                  height: 128.h,
                  child: Stack(
                    children: [
                      Container(
                        height: 100.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kPrimaryPurple.withOpacity(0.1),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(80.r),
                            bottomLeft: Radius.circular(80.r),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 70.h,
                        left: 100.w,
                        right: 100.w,
                        child: CircleAvatar(
                          maxRadius: 50.r,
                          backgroundImage: NetworkImage(state.avatar),
                        ),
                ),
                Positioned(
                  top: 100.h,
                  left: 150.w,
                  right: 60.w,
                  child: CircleAvatar(
                    maxRadius: 20.r,
                    child: const Icon(Icons.edit),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            state.userFullName,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
          Text(
            "${state.email} | +997 9845631014",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
          SizedBox(height: 25.h),
          ProfileTile(
            title: "Edit Profile Information",
            imagePath: 'assets/icons/profile-line.svg',
            onTap: () {
              context.pushNamed('edit-profile');
            },
          ),
          Divider(
            color: kPrimaryPurple.withOpacity(0.2),
            endIndent: 20.w,
            indent: 20.w,
            height: 0.h,
          ),
          ProfileTile(
            title: "Support",
            imagePath: 'assets/icons/support.svg',
            onTap: () {
              context.pushNamed('support');
            },
          ),
          Divider(
            color: kPrimaryPurple.withOpacity(0.2),
            endIndent: 20.w,
            indent: 20.w,
            height: 0.h,
          ),
          ProfileTile(
            title: "Logout",
            imagePath: 'assets/icons/logout.svg',
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.white,
                      shape: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      title: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 5.h),
                            ListTile(
                              title:
                                  SvgPicture.asset('assets/icons/logout2.svg'),
                              subtitle: Padding(
                                padding: EdgeInsets.only(top: 12.h),
                                child: Center(
                                  child: Text(
                                    "Are you sure want to logout?",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10.r, vertical: 10.r),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomLogOutButton(
                                            buttonName: "Cancel",
                                            onTap: () {
                                              context.pop();
                                            }),
                                        CustomLogOutButton(
                                          buttonName: "Logout",
                                          onTap: () {},
                                          isLogout: true,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class CustomLogOutButton extends StatelessWidget {
  final String buttonName;
  final Function()? onTap;
  final bool isLogout;

  const CustomLogOutButton({
    super.key,
    required this.buttonName,
    this.onTap,
    this.isLogout = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5.r, horizontal: 20.r),
        decoration: BoxDecoration(
            color: isLogout ? kPrimaryPurple : Colors.transparent,
            border: Border.all(color: kPrimaryPurple),
            borderRadius: BorderRadius.circular(5.r)),
        child: Center(
          child: Text(
            buttonName ?? "",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  letterSpacing: 1,
                  color: isLogout ? Colors.white : kPrimaryPurple,
                ),
          ),
        ),
      ),
    );
    ;
  }
}

customLogOutButton(
  BuildContext context, {
  String? btnName,
  Function()? onTap,
  bool isLogout = false,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 10.r, horizontal: 35.r),
      decoration: BoxDecoration(
          color: isLogout ? kPrimaryRed : Colors.transparent,
          border: Border.all(color: kPrimaryRed),
          borderRadius: BorderRadius.circular(5.r)),
      child: Center(
        child: Text(
          btnName ?? "",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                letterSpacing: 1,
                color: Colors.white,
              ),
        ),
      ),
    ),
  );
}

class ProfileTile extends StatelessWidget {
  final String title;
  final String imagePath;
  final Function()? onTap;

  const ProfileTile({
    super.key,
    required this.title,
    required this.imagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 10.r, horizontal: 15.r),
        child: ListTile(
          dense: true,
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          contentPadding: EdgeInsets.symmetric(vertical: 0.r, horizontal: 10.r),
          leading: SvgPicture.asset(imagePath),
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
