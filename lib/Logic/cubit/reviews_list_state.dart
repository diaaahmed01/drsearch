// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import '../../Data/models/review.dart';

abstract class ReviewsListState extends Equatable {}

class InitialState extends ReviewsListState {
  List<Object> get props => [];
}

class DoctorReviewLoading extends ReviewsListState {
  List<Object> get props => [];
}

class DoctorReviewLoaded extends ReviewsListState {
  final List<Review> reviews;
  List<Object> get props => [reviews];
  DoctorReviewLoaded(this.reviews);
}

class test extends ReviewsListState {
  String name;
  test({
    required this.name,
  });
  List<Object> get props => [];
}
