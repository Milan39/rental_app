import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:ghar_bhada/injection_container.dart';
import 'package:ghar_bhada/profile/cubit/logout_cubit.dart';
import 'package:go_router/go_router.dart';

class LogoutTile extends StatelessWidget {
  const LogoutTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
                      title: SvgPicture.asset('assets/icons/logout2.svg'),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 12.h),
                        child: Center(
                          child: Text(
                            "Are you sure want to logout?",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 10.r, vertical: 10.r),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomLogOutButton(
                              buttonName: "Cancel",
                              onTap: () {
                                context.pop();
                              }),
                          BlocProvider(
                            create: (context) => sl<LogoutCubit>(),
                            child: BlocConsumer<LogoutCubit, LogoutState>(
                              listener: (context, state) {
                                if (state == LogoutState.success) {
                                  context.pushReplacementNamed('login');
                                }
                              },
                              builder: (context, state) {
                                return CustomLogOutButton(
                                  buttonName: "Logout",
                                  onTap: () async {
                                    await context.read<LogoutCubit>().logoutUser();
                                    if(context.mounted) {
                                      context.pushNamed('login');
                                    }
                                  },
                                  isLogout: true,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 10.r, horizontal: 15.r),
        child: ListTile(
          dense: true,
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          contentPadding: EdgeInsets.symmetric(vertical: 0.r, horizontal: 10.r),
          leading: SvgPicture.asset("assets/icons/logout.svg"),
          title: Text(
            "Logout",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
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
  }
}
