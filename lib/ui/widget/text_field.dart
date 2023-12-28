import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget textArea(BuildContext context, String placeHolder,
    TextEditingController controller, FocusNode focusNode) {
  return ScreenUtilInit(
    child: Container(
      height: 0.1.sh,
      child: CupertinoTextField(
        placeholder: placeHolder,
        onChanged: (value) {
          print(value);
        },
        onSubmitted: (value) {
          print(value);
        },
        focusNode: focusNode,
        controller: controller,
      ),
    ),
  );
}
