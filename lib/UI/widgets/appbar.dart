import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget? buildAppBar({
  required VoidCallback onPressed,
  required Icon icon,
  required Widget title,
}) =>
    AppBar(
      title: title,
      actions: [IconButton(onPressed: onPressed, icon: icon)],
    );
