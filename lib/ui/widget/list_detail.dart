import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget listDetail(BuildContext context, String sNum, String name, String date,
    String reason) {
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
            sNum + " " + name,
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
            date,
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
            reason,
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
