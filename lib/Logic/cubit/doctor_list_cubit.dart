import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../Data/models/model.dart';
import '../../Data/models/review.dart';
import '../../Data/repos/repostory.dart';

part 'doctor_list_state.dart';

class DoctorListCubit extends Cubit<DoctorListState> {
  final UserRepository userRepository;

  // final jsonService drjson;
  List<Usermodel> allDoctors = [];

  DoctorListCubit(this.userRepository) : super(InitialState());

  List<Usermodel> getAllDoctors() {
    emit(DoctorListLoading());
    userRepository.getUser().then((doctors) {
      this.allDoctors = doctors;
      emit(DoctorListLoaded(allDoctors));
    });

    return allDoctors;
  }
}
