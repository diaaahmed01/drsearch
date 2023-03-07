// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:drlist_bloc_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:givestarreviews/givestarreviews.dart';

import '../../Data/models/review.dart';
import '../../Logic/cubit/reviews_list_cubit.dart';
import '../../Logic/cubit/reviews_list_state.dart';
import '../widgets/LoadingIndicator.dart';
import '../widgets/reviews_cart.dart';

class Reviews extends StatefulWidget {
  final String id;
  const Reviews({
    required this.id,
  });

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  late List<Review> allReviews = [];

  @override
  void initState() {
    super.initState();

    BlocProvider.of<ReviewsListCubit>(context).getReviewById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.deepPurple, title: Text('reviews')),
      body: BlocConsumer<ReviewsListCubit, ReviewsListState>(
        listener: (context, state) {
          final Statebar = SnackBar(
            duration: Duration(milliseconds: 1700),
            content: Text("${state}"),
          );
          ScaffoldMessenger.of(context).showSnackBar(Statebar);
        },
        builder: (context, state) {
          if (state is DoctorReviewLoaded) {
            allReviews = state.reviews;
            return buildLoadedListWidgets();
          }
          if (state is DoctorReviewLoading) {
            return LoadingIndicator();
          } else {
            return Container(
              color: Colors.black,
              width: double.infinity,
              height: 300,
            );
          }
        },
      ),
    );
  }

  Widget buildLoadedListWidgets() {
    if (allReviews.isNotEmpty) {
      return Container(
        width: double.infinity,
        color: AppColors().maincolor,
        height: double.maxFinite,
        child: ListView.separated(
            itemCount: allReviews.length,
            shrinkWrap: true,
            separatorBuilder: (context, index) => SizedBox(
                  height: 10.0,
                ),
            itemBuilder: (context, index) {
              return reviewCard(review: allReviews[index]);
            }),
      );
    } else {
      return Center(
          child: Container(
        width: 200,
        height: 100,
        color: Colors.blue,
        child: Center(
          child: Text("there is no reviews yet",
              style: TextStyle(color: Colors.white)),
        ),
      ));
    }
  }
}
