import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:ghar_bhada/home/cubit/home_cubit/home_cubit.dart';
import 'package:ghar_bhada/injection_container.dart';
import 'package:ghar_bhada/profile/widget/logout_tile.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl<HomeCubit>()..fetchUserInfo(),
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
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.r, horizontal: 15.r),
                    child: ListTile(
                      dense: true,
                      visualDensity:
                          const VisualDensity(horizontal: 0, vertical: -4),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0.r, horizontal: 10.r),
                      leading: Image.asset('assets/icons/change_password.png'),
                      title: Text(
                        "Change Password",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ),
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
                const LogoutTile(),
              ],
            );
          },
        ),
      ),
    );
  }
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
