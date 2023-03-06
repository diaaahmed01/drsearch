import 'package:drlist_bloc_app/Data/models/model.dart';
import 'package:drlist_bloc_app/UI/widgets/Text.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../utils/text.dart';

class doctorWidget extends StatelessWidget {
  Usermodel doctor;
  doctorWidget({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/info', arguments: doctor),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 200,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 40.0, 0.0, 0.0),
                    child: CircleAvatar(
                        radius: 40.0,
                        child:
                            Image(image: AssetImage('lib/assets/doctor.jpg'))),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(top: 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildText(
                            color: Colors.black,
                            size: 18.0,
                            text: doctor.name,
                            fontWeight: FontWeight.bold),
                        Text(doctor.specialty,
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400)),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              color: AppColors().secondcolor,
                            ),
                            Text(' 68km away',
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.star_rate),
                          color: Color(0xFF6574CF),
                        ),
                        Text(
                          '4.7',
                          style: TextStyle(
                              color: Color(0xFF6574CF), fontSize: 17.0),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.videocam_outlined),
                      color: Color(0xFF6574CF),
                    ),
                    Text(
                      'Video Visit',
                      style:
                          TextStyle(color: Color(0xFF6574CF), fontSize: 17.0),
                    ),
                    SizedBox(
                      width: 130.0,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_bag, size: 30.0),
                      color: Color(0xFF6574CF),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.text_snippet_outlined, size: 30.0),
                      color: Color(0xFF6574CF),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
