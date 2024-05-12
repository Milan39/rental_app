import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:ghar_bhada/landloard/property/model/add_room_model/add_room_model.dart';
import 'package:ghar_bhada/landloard/repository/landLord_repository.dart';

part 'add_room_state.dart';

class AddRoomCubit extends Cubit<AddRoomState> {
  final LandLordRepository repository;
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  AddRoomCubit({required this.repository}) : super(const AddRoomState());

  Future<void> addRoom() async {
    final addRoomPayLoad = AddRoomPayLoad(
      streetLocation: 'streetLocation',
      city: "city",
      price: "price",
      roomImages: [
        RoomImage(image: ''),
      ],
      description: 'description',
    );
    try {
      final responseData =
          await repository.addRoom(addRoomPayLoad: addRoomPayLoad);
      emit(AddRoomSuccess(message: "Success"));
      emit(AddRoomLoading());
    } on DioException catch (e) {
      AddRoomFailure(message: e.toString());
    }
  }
}
