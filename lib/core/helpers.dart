import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ghar_bhada/core/constant.dart';

class Helpers {
  static showCustomToast(
    BuildContext context, {
    required Widget child,
    bool? isError,
  }) {
    FToast fToast = FToast();
    fToast.init(context);
    return fToast.showToast(
        child: FadeInDown(
          duration: Durations.extralong1,
          child: Container(
            padding: EdgeInsets.all(0.r),
            decoration: BoxDecoration(
              color: isError == null
                  ? Colors.grey.shade400
                  : isError
                      ? kPrimaryPurple
                      : const Color(0xFF017D01),
              borderRadius: BorderRadius.circular(8.r),
            ),
            alignment: Alignment.center,
            child: child,
          ),
        ),
        gravity: ToastGravity.TOP,
        isDismissable: true,
        fadeDuration: Durations.short4,
        positionedToastBuilder: (context, child) {
          return Positioned(
            top: 10.h,
            right: 20.w,
            left: 20.w,
            child: child,
          );
        });
  }

  static showToastMessage(
    BuildContext context, {
    required String message,
    bool? isError,
  }) {
    FToast fToast = FToast();
    fToast.init(context);
    return fToast.showToast(
        child: FadeInDown(
          duration: Durations.extralong1,
          child: Container(
              padding: EdgeInsets.all(8.r),
              decoration: BoxDecoration(
                color: isError == null
                    ? kSecondaryBlack
                    : isError
                        ? kPrimaryRed
                        : const Color(0xFF017D01),
                borderRadius: BorderRadius.circular(8.r),
              ),
              alignment: Alignment.center,
              child: Row(
                children: [
                  isError == null
                      ? const Icon(
                          Icons.error_outline,
                          color: Colors.white,
                        )
                      : isError
                          ? const Icon(
                              Icons.error_outline,
                              color: Colors.white,
                            )
                          : const Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                  SizedBox(width: 10.w),
                  // const Spacer(),
                  SizedBox(
                    width: 250.w,
                    child: Text(
                      message,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white),
                      overflow: TextOverflow.visible,
                      maxLines: 2,
                    ),
                  ),
                ],
              )),
        ),
        // gravity: ToastGravity.TOP,
        isDismissable: true,
        fadeDuration: Durations.short4,
        positionedToastBuilder: (context, child) {
          return Positioned(
            top: 15.h,
            right: 20.w,
            left: 20.w,
            child: child,
          );
        });
  }
}
