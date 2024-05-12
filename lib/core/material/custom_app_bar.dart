import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Function()? onTap;

  const CustomAppBar({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5.r, horizontal: 5.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: kPrimaryPurple.withOpacity(0.2)),
            ),
            child: SvgPicture.asset(
              'assets/icons/arrow.svg',
              height: 15.h,
            ),
          ),
        ),
        SizedBox(width: 75.w),
        Text(
          title,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}
