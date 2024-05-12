import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:ghar_bhada/core/material/custom_app_bar.dart';
import 'package:go_router/go_router.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () {
          context.pushReplacementNamed('home');
        },
        child: Container(
          height: 25.h,
          margin: EdgeInsets.only(left: 10.h, bottom: 10.r, right: 10.h),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10.r),
          ),
          alignment: Alignment.center,
          child: Text(
            "Explore more Apartment",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: kPrimaryPurple,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.r, horizontal: 15.r),
            child: Column(
              children: [
                const CustomAppBar(title: 'Payment'),
                Column(
                  children: [
                    SizedBox(height: 100.h),
                    CircleAvatar(
                      maxRadius: 35.r,
                      minRadius: 20.r,
                      backgroundColor: kPrimaryPurple.withOpacity(0.2),
                      child: CircleAvatar(
                        maxRadius: 15.r,
                        backgroundColor: kPrimaryPurple.withOpacity(0.6),
                        child: const Icon(
                          Icons.check,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      "Payment Success",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: kPrimaryPurple,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Text(
                      "We sent an email to orders@abc.com with your order confirmation.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
