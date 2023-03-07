import 'package:drlist_bloc_app/UI/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class testappbar extends StatelessWidget {
  const testappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myAppBar(
        labelText: 'Find your Doctor',
        searchBar: true,
        onPressed: () {},
        header: 'Hamo Hassn',
        leadingIcon: Icons.arrow_back,
        rightIcon: Icons.notifications,
      ),
    );
  }
}

//myAppBar(
  //        onPressed: () {},
   //       header: 'diaa',
    //     leadingIcon: Icon(Icons.abc),
     //     rightIcon: Icon(Icons.abc_sharp)),