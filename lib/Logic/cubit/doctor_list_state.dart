part of 'doctor_list_cubit.dart';

abstract class DoctorListState extends Equatable {}

class InitialState extends DoctorListState {
  List<Object> get props => [];
}

class DoctorListLoading extends DoctorListState {
  List<Object> get props => [];
}

class DoctorListLoaded extends DoctorListState {
  List<Object> get props => [];

  final List<Usermodel> doctors;

  DoctorListLoaded(this.doctors);
}

class DoctorInfoState extends DoctorListState {
  List<Object> get props => [];

  final Usermodel doctor;
  DoctorInfoState(this.doctor);
}

class cubitOneTest extends DoctorListState {
  cubitOneTest(this.secondname);

  List<Object> get props => [];

  final String secondname;
}
