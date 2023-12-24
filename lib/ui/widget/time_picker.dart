import 'package:app/utils/theme/colors/colors.dart';
import 'package:flutter/material.dart';

Widget showTimePickerButton(
  TimeOfDay? pickedTime,
  dynamic Function()? onPressed,
  String buttonText,
  Icon icon,
  BuildContext context,
) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: const BorderSide(
          color: SystemColors.black,
          width: 0.8,
        ),
      ),
      backgroundColor: SystemColors.white,
    ),
    onPressed: onPressed,
    child: Row(
      children: [
        icon,
        Text(
          pickedTime != null ? pickedTime.format(context) : buttonText,
          style: const TextStyle(color: SystemColors.black),
        ),
      ],
    ),
  );
}
