import 'package:drlist_bloc_app/Data/models/model.dart';
import 'package:drlist_bloc_app/Logic/cubit/doctor_list_cubit.dart';
import 'package:drlist_bloc_app/Logic/cubit/reviews_list_cubit.dart';
import 'package:drlist_bloc_app/UI/screens/Drprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Data/repos/WebService.dart';
import '../../Data/repos/repostory.dart';

import '../screens/allDoctors.dart';
import '../screens/reviews.dart';
import '../screens/testappbar.dart';

class AppRouter {
  final doctorListCubit = DoctorListCubit(UserRepository(WebService()));
  final reviewListCubit = ReviewsListCubit(UserRepository(WebService()));

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: doctorListCubit,
                  child: Drlist(),
                ));

      case '/info':
        final doctor = routeSettings.arguments as Usermodel;
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: doctorListCubit,
                  child: DoctorProfile(
                    doctor: doctor,
                  ),
                ));

      case '/reviews':
        final id = routeSettings.arguments as String;
        return MaterialPageRoute(
            builder: (_) => MultiBlocProvider(
                  providers: [
                    BlocProvider.value(
                      value: reviewListCubit,
                    ),
                    BlocProvider.value(
                      value: doctorListCubit,
                    ),
                  ],
                  child: Reviews(
                    id: id,
                  ),
                ));

      default:
        return null;
    }
  }

  void dispose() {
    doctorListCubit.close();
    reviewListCubit.close();
  }
}
