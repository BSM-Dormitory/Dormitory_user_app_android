import 'dart:ffi';

import 'package:app/utils/theme/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Onboarding(BuildContext context, Widget icon, String text) {
  return ScreenUtilInit(
    child: Column(
      children: [
        SizedBox(
          height: 0.24.sh,
        ),
        icon,
        SizedBox(
          height: 0.07.sh,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: SystemColors.white,
            fontSize: 24.sp,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    ),
  );
}
