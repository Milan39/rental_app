import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'register_state.dart';

class LandLordRegisterCubit extends Cubit<LandLordRegisterState> {
  LandLordRegisterCubit() : super(const LandLordRegisterState());
}
