import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ghar_bhada/room_details/model/room_detail_model.dart';
import 'package:ghar_bhada/room_details/repository/khalti_repository.dart';


import 'khalti_state.dart';

class KhaltiCubit extends Cubit<KhaltiState> {
  final KhaltiRepository repository;
  KhaltiCubit({
    required this.repository,
  }) : super(const KhaltiState());

  Future<void> initiateKhalti({required String bookingId}) async {
      try {
        final initiateDonateResponse = await repository.initiateKhalti(bookingId: bookingId);
        emit(state.copyWith(
            pidx: initiateDonateResponse.pidx,
            status: Status.initiated
        ));
      } on DioException catch (e) {
        emit(state.copyWith(
          status: Status.failed,
          message: e.toString(),
        ));
      }
  }
  Future<void> khaltiCheckout({required String bookingId, required KhaltiCheckoutModel khaltiCheckoutModel}) async {
      try {
        final khaltiCheckoutResponse = await repository.khaltiCheckout(bookingId: bookingId, khaltiCheckoutPayload: khaltiCheckoutModel);
        emit(state.copyWith(
            pidx: "",
            status: Status.paid
        ));
      } on DioException catch (e) {
        emit(state.copyWith(
          status: Status.failed,
          message: e.toString(),
        ));
      }
  }
  // Future<void> donate() async {
  //   if (formKey.currentState!.isValid) {
  //     emit(state.copyWith(status: Status.donating));
  //     final initiateDonatePayload = InitiateDonatePayloadModel(
  //       amount: formKey.currentState!.value['donationAmount'],
  //     );
  //     try {
  //       final initiateDonateResponse = await donationRepository.initiateDonate(initiateDonatePayload);
  //       emit(state.copyWith(
  //           status: Status.donated));
  //     } on DioException catch (e) {
  //       formKey.currentState?.fields['password']?.invalidate(e.toString());
  //       emit(state.copyWith(
  //         status: Status.donationFailed,
  //         message: e.toString(),
  //       ));
  //     }
  //   }
  // }
}
