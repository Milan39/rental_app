import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:ghar_bhada/auth/cubit/login_cubit.dart';
import 'package:ghar_bhada/auth/cubit/login_state.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:ghar_bhada/core/material/field_decorations.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';

import '../../../injection_container.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LoginCubit>(),
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) async {
                if (state.status == Status.authenticated) {
                  context.pushNamed('home');
                }
              },
              builder: (context, state) {
                return Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        height: 60.h,
                      ),
                      FormBuilder(
                        key: context.read<LoginCubit>().formKey,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.r, vertical: 20.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email Address",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1,
                                      fontSize: 15.sp,
                                    ),
                              ),
                              SizedBox(height: 5.h),
                              FormBuilderTextField(
                                name: 'email',
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                keyboardType: TextInputType.emailAddress,
                                style: Theme.of(context).textTheme.bodyLarge,
                                cursorColor: kPrimaryPurple,
                                decoration: textFieldDecoration(
                                  hintText: 'Enter Email Address',
                                ),
                                validator: FormBuilderValidators.compose(
                                  [
                                    FormBuilderValidators.required(),
                                    FormBuilderValidators.email(),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "Password",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1,
                                      fontSize: 15.sp,
                                    ),
                              ),
                              SizedBox(height: 5.h),
                              FormBuilderTextField(
                                name: 'password',
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                style: Theme.of(context).textTheme.bodyLarge,
                                cursorColor: kPrimaryPurple,
                                decoration: passwordFieldDecoration(
                                  hintText: 'Enter Password',
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      state.hidePassword
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Colors.grey.shade400,
                                    ),
                                    onPressed: () {
                                      context
                                          .read<LoginCubit>()
                                          .togglePasswordVisibility();
                                    },
                                  ),
                                ),
                                obscureText: state.hidePassword,
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(),
                                ]),
                              ),
                              SizedBox(height: 12.h),
                              InkWell(
                                onTap: () {
                                  context
                                      .read<LoginCubit>()
                                      .formKey
                                      .currentState
                                      ?.saveAndValidate();
                                  context.read<LoginCubit>().authenticate();
                                  // context.pushNamed('home');
                                },
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(12.r),
                                  decoration: BoxDecoration(
                                    color: kPrimaryPurple,
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Center(child: loginButton(state)),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              InkWell(
                                onTap: () {
                                  //   TODO
                                },
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(12.r),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.r),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[300]!,
                                        offset: const Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                      )
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Login as a Landlord",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.6,
                                        fontSize: 14.sp,
                                        color: kPrimaryPurple,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15.h),
                              GestureDetector(
                                onTap: () {
                                  context.pushNamed('signup');
                                },
                                child: Center(
                                  child: RichText(
                                    text: TextSpan(
                                      text: "Don't have an account? ",
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
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget loginButton(state) {
    if (state.status == Status.authenticating) {
      return const CupertinoActivityIndicator(
        radius: 12,
        color: Colors.white,
      );
    }
    return Text(
      "Login",
      style: GoogleFonts.roboto(
        fontWeight: FontWeight.w500,
        letterSpacing: 1,
        fontSize: 16.sp,
        color: Colors.white,
      ),
    );
  }
}