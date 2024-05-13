import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:ghar_bhada/auth/cubit/user/register/register_cubit.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:ghar_bhada/core/helpers.dart';
import 'package:ghar_bhada/core/material/custom_app_bar.dart';
import 'package:ghar_bhada/core/material/field_decorations.dart';
import 'package:ghar_bhada/injection_container.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<RegisterCubit>(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          if (state is RegisterSuccess) {
            Helpers.showToastMessage(
              context,
              message: 'Registered successfully',
              isError: false,
            );
            context.pop();
          } else if (state is RegisterFailure) {
            Helpers.showToastMessage(
              context,
              message: state.message.toString(),
              isError: true,
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.r, horizontal: 10.r),
                child: FormBuilder(
                  key: context.read<RegisterCubit>().formKey,
                  child: ListView(
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
                        style: Theme.of(context).textTheme.bodyLarge,
                        decoration: textFieldDecoration(
                          hintText: 'Input your name',
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                        ]),
                      ),
                      SizedBox(height: 5.h),
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
                        style: Theme.of(context).textTheme.bodyLarge,
                        keyboardType: TextInputType.emailAddress,
                        decoration: textFieldDecoration(
                          hintText: 'Input email address',
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.email(),
                        ]),
                      ),
                      SizedBox(height: 5.h),
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
                        style: Theme.of(context).textTheme.bodyLarge,
                        decoration: textFieldDecoration(
                          hintText: 'Enter Password',
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                        ]),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "phone number",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      FormBuilderTextField(
                        name: 'phone',
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: Theme.of(context).textTheme.bodyLarge,
                        decoration: textFieldDecoration(
                          hintText: 'Enter your Phone Number',
                        ),
                        keyboardType: TextInputType.number,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                        ]),
                      ),
                      SizedBox(height: 15.h),
                      InkWell(
                        onTap: () {
                          context
                              .read<RegisterCubit>()
                              .formKey
                              .currentState
                              ?.saveAndValidate();
                          context.read<RegisterCubit>().registerUser();
                        },
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(12.r),
                          decoration: BoxDecoration(
                            color: kPrimaryPurple,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: state is RegisterLoading
                              ? const Center(
                                  child: CupertinoActivityIndicator())
                              : Center(
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
              ),
            ),
          );
        },
      ),
    );
  }
}
