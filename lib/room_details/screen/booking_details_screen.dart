import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:ghar_bhada/core/material/custom_app_bar.dart';

class BookingDetailScreen extends StatelessWidget {
  const BookingDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () {
          // TODO
        },
        child: Container(
          height: 25.h,
          margin: EdgeInsets.only(left: 10.h, bottom: 10.r, right: 10.h),
          decoration: BoxDecoration(
            color: kPrimaryPurple,
            borderRadius: BorderRadius.circular(10.r),
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/khalti.svg'),
              SizedBox(width: 10.w),
              Text(
                "Pay With Khalti",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.r, horizontal: 15.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(title: "Confirm Details"),
                SizedBox(height: 15.h),
                Text(
                  "Confirm your payment details and secure your dream apartment today! 🏠💳 #BookingConfirmed",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: 20.h),
                SizedBox(height: 5.h),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15.r),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.white,
                    // border: Border.all(color: kPrimaryPurple.withOpacity(0.5)),
                    boxShadow: [
                      BoxShadow(
                        color: kSecondaryPurple.withOpacity(0.7),
                        offset: const Offset(-4, 4),
                        blurRadius: 10,
                        spreadRadius: 10,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Translation Summary",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Appartment: ",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Text("Lakeside",
                              style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Amount Payment: ",
                              style: Theme.of(context).textTheme.bodyMedium),
                          Text("Rs.5000",
                              style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Customer: ",
                              style: Theme.of(context).textTheme.bodyMedium),
                          Text("Lil Saaz",
                              style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Payment: ",
                              style: Theme.of(context).textTheme.bodyMedium),
                          Text("Rs.5000",
                              style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
