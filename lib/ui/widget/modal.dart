import 'package:app/utils/theme/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void modal(
    BuildContext context, Widget title, Widget content, String confirmText) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: SystemColors.white,
        title: title,
        content: Padding(
          padding: EdgeInsets.all(40), // 모달의 패딩 값을 조정합니다.
          child: content,
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  confirmText,
                  textAlign: TextAlign.center, // 텍스트를 가운데 정렬
                  style: TextStyle(
                    color: SystemColors.white,
                    fontSize: 15.sp,
                  ),
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: SystemColors.systemBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.zero, // 내부 여백 제거
            ),
          ),
        ],
      );
    },
  );
}
