import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ghar_bhada/core/constant.dart';
import 'package:ghar_bhada/room_details/cubit/khalti/khalti_cubit.dart';
import 'package:ghar_bhada/room_details/model/room_detail_model.dart';
import 'package:go_router/go_router.dart';
import 'package:khalti_checkout_flutter/khalti_checkout_flutter.dart';

class KhaltiButton extends StatefulWidget {
  final String pidx;
  final BookingResponse bookingResponse;
  const KhaltiButton({super.key, required this.pidx, required this.bookingResponse});

  @override
  State<KhaltiButton> createState() => _KhaltiButtonState();
}

class _KhaltiButtonState extends State<KhaltiButton> {
  late final Future<Khalti> khalti;

  PaymentResult? paymentResult;


  @override
  void initState() {
    super.initState();
    final payConfig = KhaltiPayConfig(
      publicKey: dotenv.get('KHALTI_PUBLIC_KEY'), // Merchant's public key
      pidx: widget.pidx,
      returnUrl: Uri.parse('https://khalti.com'),
      environment: Environment.test,
    );

    khalti = Khalti.init(
      enableDebugging: true,
      payConfig: payConfig,
      onPaymentResult: (paymentResult, khalti) {
        setState(() {
          this.paymentResult = paymentResult;
        });
        khalti.close(context);
      },
      onMessage: (
          khalti, {
            description,
            statusCode,
            event,
            needsPaymentConfirmation,
          }) async {
        log(
          'Description: $description, Status Code: $statusCode, Event: $event, NeedsPaymentConfirmation: $needsPaymentConfirmation',
        );
        khalti.close(context);
      },
      onReturn: () => log('Successfully redirected to return_url.'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: khalti,
      initialData: null,
      builder: (context, snapshot) {
        if (paymentResult != null) {
          context.read<KhaltiCubit>().khaltiCheckout(
              bookingId: widget.bookingResponse.id,
              khaltiCheckoutModel: KhaltiCheckoutModel(
                  pidx: paymentResult!.payload!.pidx,
                  amount: widget.bookingResponse.totalAmount
              )
          );
        }
        final khaltiSnapshot = snapshot.data;
        if (khaltiSnapshot == null) {
          return const CircularProgressIndicator.adaptive();
        }
        return GestureDetector(
          onTap: () => khaltiSnapshot.open(context),
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
        );
      },
    );
  }
}
