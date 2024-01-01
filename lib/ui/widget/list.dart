import 'package:app/ui/widget/enums/type.dart';
import 'package:app/utils/theme/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget outDoorList(BuildContext context, sNum, String name, ListType status) {
  return ScreenUtilInit(
    child: GestureDetector(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: 0.8.sw,
        height: 0.1.sh,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: SystemColors.white,
          border: Border.all(
            width: 1,
            color: SystemColors.systemBlue,
          ),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Text(
              sNum,
              style: const TextStyle(
                color: SystemColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              name,
              style: const TextStyle(
                color: SystemColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            if (status == ListType.allow)
              const Text(
                "승인",
                style: TextStyle(
                  color: SystemColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
            else if (status == ListType.waiting)
              const Text(
                "승인대기중",
                style: TextStyle(
                  color: SystemColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
            else
              const Text(
                "요청거절",
                style: TextStyle(
                  color: SystemColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
          ],
        ),
      ),
    ),
  );
}
