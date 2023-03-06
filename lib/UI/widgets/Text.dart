import 'package:flutter/material.dart';

Widget buildText({
  required final Color color,
  required final double size,
  required final String text,
  required final FontWeight fontWeight,
}) {
  return Text(
    text,
    style: TextStyle(color: color, fontSize: size, fontWeight: fontWeight),
  );
}
