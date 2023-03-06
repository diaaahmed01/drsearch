import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'reviews_list_state.dart';
import 'package:equatable/equatable.dart';

import '../../Data/models/review.dart';

import '../../Data/models/model.dart';
import '../../Data/repos/repostory.dart';

class ReviewsListCubit extends Cubit<ReviewsListState> {
  final UserRepository userRepository;

  List<Review> allReviews = [];
  ReviewsListCubit(this.userRepository) : super(InitialState());

  List<Review> getReviewById(String id) {
    emit(DoctorReviewLoading());
    userRepository.getReviewById(id).then((reviews) {
      this.allReviews = reviews;
      emit(DoctorReviewLoaded(allReviews));
    });
    return allReviews;
  }
}
