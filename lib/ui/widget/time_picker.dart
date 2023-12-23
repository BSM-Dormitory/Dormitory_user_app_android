import 'package:app/utils/theme/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget showTimePickerButton(
  TimeOfDay? pickedTime,
  dynamic Function()? onPressed,
  String buttonText,
  BuildContext context,
) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: const BorderSide(
          color: SystemColors.black,
          width: 1.0,
        ),
      ),
      backgroundColor: SystemColors.white,
    ),
    onPressed: onPressed,
    child: Text(
      pickedTime != null ? pickedTime.format(context) : buttonText,
      style: TextStyle(color: SystemColors.black),
    ),
  );
}
