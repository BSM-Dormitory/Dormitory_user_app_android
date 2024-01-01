import 'dart:ffi';
import 'dart:ui' as ui;
import 'package:app/ui/widget/list_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/theme/colors/colors.dart';

class OutdoorDetail extends StatelessWidget {
  const OutdoorDetail({Key? key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xFF3C3C43),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Center(
                child: Column(
              children: <Widget>[
                Container(
                  width: 100.sw,
                  height: 0.3.sh,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFF007AFF),
                        ),
                        child: Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 30,
                            ),
                            Image.asset("assets/file.png"),
                            const Text(
                              "요청 내용",
                              style: TextStyle(
                                color: SystemColors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                listDetail(context, "2407", "박현준", "12:00 ~ 13:00",
                    "아무튼 이유임"), // 더미데이터임 나중에 데이터베이스에서 가져온 값 넣을 예정
                SizedBox(
                  height: 0.02.sh,
                ),
                Container(
                  margin: EdgeInsets.only(top: 40.0.h),
                  width: 0.8.sw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "승인",
                          style: TextStyle(
                            color: SystemColors.white,
                            fontSize: 16.sp,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color(0xFF007AFF),
                          ),
                          minimumSize: MaterialStateProperty.all(
                            ui.Size(0.37.sw, 0.07.sh),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 0.02.sw,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "거절",
                          style: TextStyle(
                            color: SystemColors.black,
                            fontSize: 16.sp,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 255, 255, 255),
                          ),
                          minimumSize: MaterialStateProperty.all(
                            ui.Size(0.37.sw, 0.07.sh),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}