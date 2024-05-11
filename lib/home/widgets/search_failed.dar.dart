import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ghar_bhada/core/constant.dart';

class SearchNotFoundTile extends StatelessWidget {
  final String message;

  const SearchNotFoundTile({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50.h),
          SvgPicture.asset("assets/icons/no_result_found.svg"),
          SizedBox(height: 15.h),
          Text(
            message,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
              color: kPrimaryPurple,
            ),
          ),
          Text(
            "Please try another keyword",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
              color: Colors.grey.shade300,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}
