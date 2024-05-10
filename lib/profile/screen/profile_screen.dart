import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ghar_bhada/core/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                    backgroundImage: const AssetImage(
                      "assets/images/lil_saaz.png",
                    ),
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
            "Saaz",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            "youremail@domain.com | +997 9845631014",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(height: 25.h),
          const ProfileTile(
            title: "Edit Profile Information",
            imagePath: 'assets/icons/profile-line.svg',
          ),
          const ProfileTile(
            title: "Logout",
            imagePath: 'assets/icons/logout.svg',
          ),
        ],
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  final String title;
  final String imagePath;

  const ProfileTile({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //   TODO
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(12.r),
        margin: EdgeInsets.symmetric(vertical: 10.r, horizontal: 15.r),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200]!,
              offset: const Offset(1, 2),
              spreadRadius: 1,
              blurRadius: 1,
            )
          ],
        ),
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
