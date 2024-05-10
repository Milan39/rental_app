import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:google_fonts/google_fonts.dart';

InputDecoration baseFieldDecoration({
  required String hintText,
  Widget? prefixIcon,
  Widget? suffixIcon,
  double radius = 5,
  Color borderColor = Colors.white
}) {
  BorderRadius borderRadius = BorderRadius.circular(radius.r);
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: borderRadius,
    borderSide:  BorderSide(color: borderColor),
  );
  return InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 12.r, horizontal: 10.r),
    hintText: hintText,
    errorMaxLines: 2,
    filled: true,
    fillColor: Colors.transparent,
    errorStyle: GoogleFonts.roboto(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: 1,
      color: Colors.red,
    ),
    hintStyle: GoogleFonts.roboto(
      fontSize: 12.sp,
      letterSpacing: 1.6,
      color: Colors.black,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: const BorderSide(color: Colors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: kPrimaryPurple.withOpacity(0.5)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: kPrimaryPurple.withOpacity(0.5)),
    ),
    border: outlineInputBorder,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
  );
}

InputDecoration textFieldDecoration({required String hintText}) {
  return baseFieldDecoration(hintText: hintText);
}

InputDecoration passwordFieldDecoration(
    {required String hintText, required Widget suffixIcon}) {
  return baseFieldDecoration(
    hintText: hintText,
    suffixIcon: suffixIcon,
  );
}

BoxDecoration decoration(BuildContext context) {
  return BoxDecoration(
    color: kSecondaryBlack,
    borderRadius: BorderRadius.circular(10.r),
    boxShadow: Theme.of(context).brightness == Brightness.dark
        ? []
        : [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 8.0,
              offset: const Offset(0, 0),
              spreadRadius: 3,
            )
          ],
  );
}
