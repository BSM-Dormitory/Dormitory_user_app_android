import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class MyHome extends StatelessWidget {
  MyHome({Key? key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        home: Scaffold(
          body: Column(children: [
            Container(
              color: Color(0xFF007AFF),
              width: 1.sw,
              height: 1.sh,
              child: Text("Hello World"),
            ),
          ]),
        ),
      ),
    );
  }
}
