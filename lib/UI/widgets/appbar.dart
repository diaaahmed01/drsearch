// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myAppBar extends StatelessWidget {
  var header;
  var leadingIcon;
  var rightIcon;
  var searchBar = false;
  var labelText;
  VoidCallback onPressed;
  var width;
  var height;
  var searchFelidIcon;
  var searchFelidIconColor;
  myAppBar({
    this.labelText = "",
    this.width = double.infinity,
    this.height = 170.0,
    this.searchBar = false,
    this.searchFelidIconColor = Colors.white,
    this.searchFelidIcon = Icons.search,
    required this.onPressed,
    required this.header,
    required this.leadingIcon,
    required this.rightIcon,
  });

  @override
  Widget build(BuildContext context) {
    return _buildAppBar();
  }

  Widget _buildAppBar() {
    return Container(
      height: height,
      width: width,
      color: Color(0xFF6574CF),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: onPressed,
                  icon: Icon(leadingIcon),
                  color: Colors.white,
                  iconSize: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Text(header,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 7),
                  child: IconButton(
                    onPressed: onPressed,
                    icon: Icon(rightIcon),
                    iconSize: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          _searchBar()

          //appbar
        ],
      ),
    );
  }

  Widget _searchBar() {
    if (searchBar == true) {
      return Container(
        width: 370,
        height: 50,
        color: Color.fromRGBO(126, 138, 215, 1),
        child: TextFormField(
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.white, fontSize: 16),
            suffixIcon: IconButton(
              icon: Icon(
                searchFelidIcon,
                color: Colors.white,
              ),
              color: searchFelidIconColor,
              onPressed: onPressed,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(width: 1, color: Colors.white), //<-- SEE HERE
              borderRadius: BorderRadius.circular(3.0),
            ),
          ),
        ),
      );
    } else
      return SizedBox();
  }
}
