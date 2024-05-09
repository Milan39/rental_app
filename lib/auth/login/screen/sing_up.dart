import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:ghar_bhada/core/material/custom_app_bar.dart';
import 'package:ghar_bhada/core/material/field_decorations.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.r, horizontal: 10.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(title: 'Signup'),
            SizedBox(height: 20.h),
            Text(
              "Name",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(height: 5.h),
            FormBuilderTextField(
              name: 'name',
              autovalidateMode: AutovalidateMode.onUserInteraction,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                  ),
              decoration: textFieldDecoration(
                hintText: 'Input your name',
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            SizedBox(height: 10.h),
            Text(
              "Email Address ",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(height: 5.h),
            FormBuilderTextField(
              name: 'email',
              autovalidateMode: AutovalidateMode.onUserInteraction,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                  ),
              decoration: textFieldDecoration(
                hintText: 'Input email address',
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            SizedBox(height: 10.h),
            Text(
              "Password",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(height: 5.h),
            FormBuilderTextField(
              name: 'password',
              autovalidateMode: AutovalidateMode.onUserInteraction,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                  ),
              decoration: textFieldDecoration(
                hintText: 'Enter Password',
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            SizedBox(height: 15.h),
            InkWell(
              onTap: () {
                context.pushNamed('home');
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(12.r),
                decoration: BoxDecoration(
                  color: kPrimaryPurple,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.6,
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.6,
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign in",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                          fontSize: 14.sp,
                          color: kPrimaryPurple,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
