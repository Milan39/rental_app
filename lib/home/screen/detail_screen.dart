import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:ghar_bhada/core/material/custom_app_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String data = GoRouterState.of(context).extra as String;
    return Scaffold(
      bottomNavigationBar: InkWell(
        onTap: () {
          //   TODO
        },
        child: Container(
          height: 25.h,
          width: double.infinity,
          margin: EdgeInsets.only(left: 10.r, right: 10.r, bottom: 25.r),
          padding: EdgeInsets.all(12.r),
          decoration: BoxDecoration(
            color: kPrimaryPurple,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
              child: Text(
            'Rent Now',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          )),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.r, horizontal: 15.r),
                child: const CustomAppBar(title: "Details"),
              ),
              SizedBox(height: 5.h),
              Stack(
                children: [
                  Image.network(
                    data,
                    height: 130.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 100.h,
                    right: 15.w,
                    child: Container(
                      height: 20.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      alignment: Alignment.center,
                      child: ListTile(
                        visualDensity:
                            const VisualDensity(horizontal: 0, vertical: -4),
                        dense: true,
                        horizontalTitleGap: 0,
                        minLeadingWidth: 25.w,
                        contentPadding: EdgeInsets.only(right: 0.r, left: 10.r),
                        leading: const Icon(Icons.image),
                        title: Text(
                          "1/7",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15.r),
                    child: Text(
                      "Pokhara Lakeside",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.r, right: 15.r),
                    child: RichText(
                      text: TextSpan(
                        text: 'Rs. 10,000 \n',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.6,
                          fontSize: 14.sp,
                          color: kPrimaryPurple,
                        ),
                        children: [
                          TextSpan(
                            text: "/month",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.6,
                              fontSize: 14.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                dense: true,
                horizontalTitleGap: 0,
                minLeadingWidth: 20.w,
                contentPadding: EdgeInsets.only(right: 0.r, left: 10.r),
                title: Text(
                  "Alice Spring NT 0870, Nepal",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.grey),
                ),
                leading: SvgPicture.asset(
                  'assets/icons/location.svg',
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(right: 0.r, left: 10.r),
                title: Text(
                  "Ghar Bhada",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                subtitle: Text(
                  "9846541456, 9847563410",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.grey,
                      ),
                ),
                leading: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.r, horizontal: 10.r),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: kPrimaryPurple.withOpacity(0.2)),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/phone.svg',
                    height: 10.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.r),
                child: Text(
                  "Description",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.r, right: 15.r),
                child: ReadMoreText(
                  "is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is ",
                  style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                  postDataText: "This is more text",
                  trimMode: TrimMode.Line,
                  trimLines: 2,
                  colorClickableText: kPrimaryPurple,
                  trimCollapsedText: 'Read more',
                  trimExpandedText: 'Read less',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
