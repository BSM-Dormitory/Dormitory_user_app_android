import 'package:app/ui/widget/enums/type.dart';
import 'package:app/utils/theme/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget outDoorList(
    BuildContext context, String sNum, String name, ListType status) {
  return ScreenUtilInit(
    child: GestureDetector(
      onTap: () {
        Get.toNamed("/outdoor/$sNum", arguments: {
          'sNum': sNum,
          'name': name,
        });
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: 0.85.sw,
        height: 0.07.sh,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: {
            ListType.allow: SystemColors.systemBlue,
            ListType.waiting: SystemColors.systemYellow,
            ListType.reject: SystemColors.systemGray,
          }[status],
          border: Border.all(
            width: 1,
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              sNum,
              style: const TextStyle(
                color: SystemColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                color: SystemColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            if (status == ListType.allow)
              const Text(
                "승인",
                style: TextStyle(
                  color: SystemColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              )
            else if (status == ListType.waiting)
              const Text(
                "대기",
                style: TextStyle(
                  color: SystemColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              )
            else
              const Text(
                "거절",
                style: TextStyle(
                  color: SystemColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              )
          ],
        ),
      ),
    ),
  );
}
