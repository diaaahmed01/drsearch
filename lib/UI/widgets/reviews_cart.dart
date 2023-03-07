// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:givestarreviews/givestarreviews.dart';

import '../../Data/models/review.dart';

class reviewCard extends StatelessWidget {
  Review review;
  reviewCard({
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 7),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/doctor.jpg'),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(review.patientName,
                      style: TextStyle(
                          fontSize: 17.0, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text('25 May , 12:09PM', style: TextStyle(fontSize: 12.0)),
                  GiveStarReviews(
                    spaceBetween: 2,
                    starData: [
                      GiveStarData(
                          text: '',
                          onChanged: null,
                          value: 4,
                          size: 17,
                          activeStarColor: Color(0xFF6574CF),
                          inactiveStarColor: Color(0xFF6574CF)),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 150),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.pink,
                  size: 30.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(review.feedBackContent,
                    style: TextStyle(
                        color: Color.fromARGB(198, 0, 0, 0),
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
              ),
              // SizedBox(
              //   width: 140.0,
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
