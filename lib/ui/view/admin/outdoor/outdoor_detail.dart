import 'dart:ui' as ui;
import 'package:app/ui/widget/list_detail.dart';
import 'package:app/ui/widget/modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/theme/colors/colors.dart';

// ignore: must_be_immutable
class OutdoorDetail extends StatelessWidget {
  OutdoorDetail({super.key});
  // widget폴더에서 list.dart에 있는 listDetail함수를 가져옴
  // arguments로 받아온 값
  String sNum = Get.arguments['sNum'];
  String sName = Get.arguments['name'];

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
                listDetail(
                  context: context,
                  sNum: sNum,
                  name: sName,
                  date: "2021-09-01",
                  reason: "외출",
                  // 나중에 시작시간, 끝시간, reason도 인자로 받아야 함
                ), // 더미데이터임 나중에 데이터베이스에서 가져온 값 넣을 예정
                SizedBox(
                  height: 0.02.sh,
                ),
                Container(
                  margin: EdgeInsets.only(top: 40.0.h),
                  width: 0.8.sw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      OutlinedButton(
                        onPressed: () {
                          // 대충 승인버튼 눌렀을 때 로직 작성
                          // 데이터베이스에서 승인한 선생님 이름 넣어줘야 함
                          // 데이터베이스에서 상태를 승인으로 바꿔줘야 함
                          print("승인");
                          Get.toNamed("/admin/outdoor/list");
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                    20), // 테두리의 모서리를 0으로 설정하여 네모 모양으로 만듭니다.
                              ),
                            ),
                          ),
                          side: MaterialStateProperty.all(
                            const BorderSide(
                              color: SystemColors.systemBlue, // 테두리 색상을 설정합니다.
                              width: 2.0, // 테두리 두께를 설정합니다.
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            SystemColors.systemBlue,
                          ),
                          minimumSize: MaterialStateProperty.all(
                            Size(0.37.sw, 0.07.sh),
                          ),
                        ),
                        child: Text(
                          "승인",
                          style: TextStyle(
                            color: SystemColors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 0.02.sw,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          modal(
                            context,
                            Text(
                              "거절사유",
                              style: TextStyle(
                                color: SystemColors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              width: 1.0.sw,
                              height: 0.2.sh,
                              child: CupertinoTextField(
                                maxLines: 5,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: SystemColors.systemGray,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            "다음",
                            SystemColors.systemRed,
                            "/admin/home",
                          );
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                    20), // 테두리의 모서리를 0으로 설정하여 네모 모양으로 만듭니다.
                              ),
                            ),
                          ),
                          side: MaterialStateProperty.all(
                            const BorderSide(
                              color: Colors.red, // 테두리 색상을 설정합니다.
                              width: 2.0, // 테두리 두께를 설정합니다.
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            SystemColors.white,
                          ),
                          minimumSize: MaterialStateProperty.all(
                            Size(0.37.sw, 0.07.sh),
                          ),
                        ),
                        child: Text(
                          "거절",
                          style: TextStyle(
                            color: SystemColors.systemRed,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
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
