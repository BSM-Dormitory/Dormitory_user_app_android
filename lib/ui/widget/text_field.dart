import 'package:flutter/material.dart';

Widget textArea(BuildContext context, String placeHolder) {
  return Container(
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: placeHolder,
      ),
    ),
  );
}
