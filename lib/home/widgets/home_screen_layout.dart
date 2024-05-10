import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({super.key});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discover \nyour new house.",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Container(
                  height: 25.h,
                  width: 45.w,
                  padding: EdgeInsets.symmetric(vertical: 5.r, horizontal: 5.r),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: kPrimaryPurple.withOpacity(0.2)),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/lil_saaz.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                const Expanded(
                  child: SearchBar(),
                ),
                SizedBox(width: 10.w),
                GestureDetector(
                  onTap: () {
                    // TODO
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.r, horizontal: 10.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border:
                          Border.all(color: kPrimaryPurple.withOpacity(0.2)),
                    ),
                    // alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/icons/filter.svg',
                      height: 10.h,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            const DetailsCard(
              imagePath: 'assets/images/property.png',
              location: "Lakside Pokhara",
              mapLocation: "Alice Springs NT 0870, Nepal",
              price: '10,000',
            ),
            const DetailsCard(
              imagePath: 'assets/images/property2.png',
              location: "Kathmandu Nepal",
              mapLocation: "location near ktm, Nepal",
              price: '20,000',
            ),
            const DetailsCard(
              imagePath: 'assets/images/property3.png',
              location: "Pokhara",
              mapLocation: "Alice Springs NT 0870, Nepal",
              price: '10,000',
            ),
            const DetailsCard(
              imagePath: 'assets/images/property4.png',
              location: "Lakside Pokhara",
              mapLocation: "location near Rastra Bank Chowk, Nepal",
              price: '30,000',
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsCard extends StatelessWidget {
  final String imagePath;
  final String location;
  final String mapLocation;
  final String price;

  const DetailsCard({
    super.key,
    required this.imagePath,
    required this.location,
    required this.mapLocation,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          "details",
           extra: imagePath,
        );
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 10.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200]!,
              offset: const Offset(1, 2),
              spreadRadius: 1,
              blurRadius: 1,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.r),
                  topLeft: Radius.circular(10.r),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    imagePath,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.only(left: 15.r),
              child: Text(
                location,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
              dense: true,
              horizontalTitleGap: 0,
              minLeadingWidth: 20.w,
              contentPadding: EdgeInsets.only(right: 0.r, left: 10.r),
              title: Text(
                mapLocation,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),
              ),
              leading: SvgPicture.asset(
                'assets/icons/location.svg',
              ),
            ),
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.only(left: 15.r),
              child: RichText(
                text: TextSpan(
                  text: "Rs. $price",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                    fontSize: 14.sp,
                    color: kPrimaryPurple,
                  ),
                  children: [
                    TextSpan(
                      text: "/month",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.6,
                        fontSize: 14.sp,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: "search",
      onSubmitted: (value) {},
      autofocus: false,
      style: Theme.of(context).textTheme.bodyLarge,
      cursorColor: kPrimaryRed,
      decoration: InputDecoration(
        hintText: "   Search hotel,location etc",
        suffixIcon: Icon(
          Icons.search,
          color: kPrimaryPurple,
        ),
        hintStyle: GoogleFonts.roboto(
          color: kPrimaryPurple,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 12.r, horizontal: 15.r),
        fillColor: Colors.transparent,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.r),
            borderSide: BorderSide(color: kPrimaryPurple.withOpacity(0.3))),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.r),
          borderSide: BorderSide(color: kPrimaryPurple.withOpacity(0.3)),
        ),
      ),
    );
  }
}