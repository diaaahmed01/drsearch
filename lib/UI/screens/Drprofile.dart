import 'package:drlist_bloc_app/Data/models/model.dart';
import 'package:drlist_bloc_app/UI/widgets/appbar.dart';
import 'package:drlist_bloc_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:givestarreviews/givestarreviews.dart';

class DoctorProfile extends StatelessWidget {
  final Usermodel doctor;

  const DoctorProfile({super.key, required this.doctor});

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: AppColors().maincolor,
        child: SingleChildScrollView(
          child: Column(children: [
            myAppBar(
                height: 103.0,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                header: "Doctor Details",
                leadingIcon: Icons.arrow_back,
                rightIcon: Icons.chat_outlined),
            Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 30.0, 0.0, 15.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/doctor.jpg'),
                  radius: 70.0,
                )),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(doctor.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 18, 18, 18),
                            fontSize: 23.0)),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.verified_rounded,
                      color: AppColors().secondcolor,
                    ),
                  ],
                ),
                Text('Ophthalmologist',
                    style: TextStyle(
                        color: Color.fromARGB(255, 38, 38, 38),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: AppColors().secondcolor,
                      ),
                      Text(
                        '4.7',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                          child: Text('Alexandria',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 20.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
                          child: Text('Location',
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 15.0)),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.grey,
                      width: 2,
                      height: 60,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 40, 0),
                          child: Text('20 Years',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 20.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 40, 0),
                          child: Text('Experience',
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 15.0)),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'About',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Column(children: [
                    Text(
                      'Dr.Hosny is a cardiologist who actively serves patients at citra husada hospital jember and a chess player with a score 1 to 37 against his big rival hamo hasson ',
                      style: TextStyle(
                          fontSize: 15, color: Color.fromARGB(255, 83, 83, 83)),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton.icon(
                  icon: Icon(
                    Icons.watch_later_rounded,
                    color: Colors.white,
                    size: 20.0,
                  ),
                  label: Text(
                    'Available Timing',
                    style: TextStyle(fontSize: 17),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors().secondcolor,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(3.0),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 15),
              child: Container(
                width: 370,
                color: AppColors().maincolor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('STATS',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold)),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'more',
                            style: TextStyle(
                                fontSize: 15, color: AppColors().secondcolor),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.school_outlined,
                          color: AppColors().secondcolor,
                        ),
                        SizedBox(width: 10),
                        Text('studied at Alexandria University',
                            style: TextStyle(fontSize: 15)),
                      ],
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.local_hospital_outlined,
                          color: AppColors().secondcolor,
                        ),
                        SizedBox(width: 10),
                        Text('Practicing at NYU langone Hospitals',
                            style: TextStyle(fontSize: 15)),
                      ],
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.person_2_outlined,
                          color: AppColors().secondcolor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('324 Happy Patients',
                            style: TextStyle(fontSize: 15)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text('Reviews',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            width: 210.0,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                '/reviews',
                                arguments: doctor.id,
                              );
                            },
                            child: Text(
                              'show All',
                              style: TextStyle(
                                  fontSize: 15, color: AppColors().secondcolor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, left: 10.0),
                    child: Container(
                      height: 120.0,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => buildReviewCard(),
                        separatorBuilder: (context, index) => SizedBox(
                          width: 15.0,
                        ),
                        itemCount: 4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    ));
  }

  Widget buildReviewCard() => Container(
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            width: 2,
            color: Color.fromARGB(255, 171, 200, 240).withOpacity(0.4),
            style: BorderStyle.solid,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('lib/assets/doctor.jpg'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: AppColors().secondcolor,
                      ),
                      Text(
                        '4.7',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Kareem',
                      style: TextStyle(
                          fontSize: 17.0, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 200,
                    child: Text(
                        'Dr. Hosny is so kind i feel safe and always give clear explanation',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
