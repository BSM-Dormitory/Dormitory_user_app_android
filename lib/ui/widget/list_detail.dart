import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget listDetail({
  required BuildContext context,
  required String id,
  required String name,
  required String timeRange,
  required String description,
}) {
  return ScreenUtilInit(
    child: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 0.1.sw),
          alignment: Alignment.bottomLeft,
          child: Text(
            "학번 이름",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 0.1.sw),
          alignment: Alignment.bottomLeft,
          child: Text(
            id + " " + name,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20.sp,
            ),
          ),
        ),
        SizedBox(
          height: 0.04.sh,
        ),
        Container(
          margin: EdgeInsets.only(left: 0.1.sw),
          alignment: Alignment.centerLeft,
          child: Text(
            "외출 날짜",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 0.1.sw),
          alignment: Alignment.centerLeft,
          child: Text(
            timeRange,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20.sp,
            ),
          ),
        ),
        SizedBox(
          height: 0.04.sh,
        ),
        Container(
          margin: EdgeInsets.only(left: 0.1.sw),
          alignment: Alignment.centerLeft,
          child: Text(
            "외출 사유",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 0.1.sw),
          alignment: Alignment.centerLeft,
          child: Text(
            description,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20.sp,
            ),
          ),
        ),
      ],
    ),
  );
}
