import 'package:flutter/material.dart';

Widget textArea(BuildContext context, String placeHolder) {
  return TextField(
    decoration: InputDecoration(
      border: const OutlineInputBorder(),
      hintText: placeHolder,
    ),
  );
}
