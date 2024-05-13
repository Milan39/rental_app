import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:ghar_bhada/injection_container.dart';
import 'package:ghar_bhada/room_details/cubit/khalti/khalti_cubit.dart';
import 'package:ghar_bhada/room_details/cubit/khalti/khalti_state.dart';
import 'package:ghar_bhada/room_details/model/room_detail_model.dart';
import 'package:ghar_bhada/room_details/widgets/khalti_button.dart';
import 'package:go_router/go_router.dart';

import '../../core/material/custom_app_bar.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var bookingResponse = GoRouterState.of(context).extra as BookingResponse;
    return BlocProvider(
      create: (context) => sl<KhaltiCubit>()..initiateKhalti(bookingId: bookingResponse.id),
      child: Scaffold(
        bottomNavigationBar: BlocConsumer<KhaltiCubit, KhaltiState>(
          listener: (context, state) {
            if (state.status == Status.paid) {
              context.pushReplacementNamed('payment-success');
            }
          },
          builder: (context, state) {
            return BlocBuilder<KhaltiCubit, KhaltiState>(
              builder: (context, state) {
                if (state.status == Status.initiated) {
                  return KhaltiButton(pidx: state.pidx, bookingResponse: bookingResponse,);
                }
                return Container();
              },
            );
          },
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
                        SizedBox(height: 5.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Amount Payment: ",
                                style: Theme.of(context).textTheme.bodyMedium),
                            Text(bookingResponse.totalAmount.toString(),
                                style: Theme.of(context).textTheme.bodyMedium),
                          ],
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Customer: ",
                                style: Theme.of(context).textTheme.bodyMedium),
                            Text(bookingResponse.normalUser,
                                style: Theme.of(context).textTheme.bodyMedium),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total Payment: ",
                                style: Theme.of(context).textTheme.bodyMedium),
                            Text(bookingResponse.totalAmount.toString(),
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
      ),
    );
  }
}
