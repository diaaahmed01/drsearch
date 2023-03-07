import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class specialty extends StatelessWidget {
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 150.0,
              width: double.infinity,
              color: Color(0xFF6574CF),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 50.0),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back, color: Colors.white),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text('Specialities',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    width: 350.0,
                    height: 45.0,
                    color: Color.fromRGBO(126, 138, 215, 1),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Find your doctor",
                        labelStyle: TextStyle(color: Colors.white),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Colors.white), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => buildList(),
              separatorBuilder: (context, index) => SizedBox(
                height: 10.0,
              ),
              itemCount: 7,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildList() => Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text('Radiology',
                        style:
                            TextStyle(fontSize: 15.0, color: Colors.grey[900])),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text('18 Specialists',
                        style:
                            TextStyle(fontSize: 13.0, color: Colors.grey[600])),
                  ),
                ],
              ),
              SizedBox(
                width: 230.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: IconButton(
                    //todo
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey[500],
                      size: 25.0,
                    )),
              ),
            ],
          ),
          Container(
            height: 2.0,
            width: 400.0,
            color: Colors.grey[200],
          ),
        ],
      );
}
