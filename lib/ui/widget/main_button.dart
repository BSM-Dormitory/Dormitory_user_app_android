import 'package:app/utils/theme/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget MainWidget(String title, Widget assets, Function() onTap) {
  return ScreenUtilInit(
      child: GestureDetector(
    onTap: onTap,
    child: Container(
      width: 0.15.sh,
      height: 0.4.sw,
      child: Row(
        children: [
          assets,
          Container(
            margin: EdgeInsets.only(left: 0.05.sw),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: SystemColors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  ));
}
