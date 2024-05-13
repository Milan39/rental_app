import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:ghar_bhada/landloard/repository/landLord_repository.dart';
import 'package:image_picker/image_picker.dart';

part 'add_room_state.dart';

class AddRoomCubit extends Cubit<AddRoomState> {
  final LandLordRepository repository;
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  AddRoomCubit({required this.repository}) : super(const AddRoomState());

  Future<void> addRoom(List<XFile> imageFileList) async {

    FormData addRoomPayLoad = FormData.fromMap({
      'street_location': formKey.currentState!.value['location'],
      'city': '1f3ab4dc-ca40-4565-ac56-f05dbc7b2336',
      'price': formKey.currentState!.value['price'],
      'description': formKey.currentState!.value['description'],
    });

    try {
      final responseData =
          await repository.addRoom(addRoomPayLoad: addRoomPayLoad);
      emit(const AddRoomSuccess(message: "Success"));
    } on DioException catch (e) {
      AddRoomFailure(message: e.toString());
    }
  }
}
