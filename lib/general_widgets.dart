import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

Widget Header(String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 35,
          ),
        ),
      ),
    ],
  );
}

Widget Subheader(String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    ],
  );
}

Widget PText(String text) {
  return Padding(
    padding: EdgeInsets.only(left : 5, right: 5, bottom: 5),
    child: Text(
      text,
      style: TextStyle(fontSize: 18),
    ),
  );
}

Widget PMath(String text) {
  return Padding(
    padding: EdgeInsets.only(left : 10, right: 10, bottom: 5),
    child: Math.tex(
      text,
      textStyle: TextStyle(fontSize: 20),
    ),
  );
}
