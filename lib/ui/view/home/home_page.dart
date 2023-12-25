import 'package:app/ui/widget/main_button.dart';
import 'package:app/utils/theme/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHome extends StatelessWidget {
  MyHome({Key? key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: MediaQuery.of(context).size,
      builder: (context, child) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            leading: const Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xFF3C3C43),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
            ],
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFF007AFE),
                    Color(0xFF5856D6),
                  ],
                ),
              ),
            ),
          ),
          body: Center(
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
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFF007AFE),
                              Color(0xFF5856D6),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 200.h),
                        height: 0.4.sh,
                        child: OverflowBox(
                          alignment: Alignment.topCenter,
                          maxHeight: double
                              .infinity, // 자식 위젯의 높이를 최대로 설정하여 Container의 경계를 벗어나도록 함
                          child: Container(
                            alignment: Alignment.center,
                            child: Container(
                                width: 0.75.sw,
                                height: 0.15.sh,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: SystemColors.white,
                                  borderRadius: BorderRadius.circular(20.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: SystemColors.systemBlue
                                          .withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 7,
                                      offset:
                                          const Offset(0, 0), // 아래쪽으로 그림자 위치 조정
                                    ),
                                  ],
                                ),
                                child: Container(
                                  width: 0.6.sw,
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Image.asset(
                                        "assets/bed.png",
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "조기입사",
                                        style: TextStyle(
                                          color: SystemColors.black,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.1.sh,
                ),
                Container(
                  margin: EdgeInsets.only(left: 50.w),
                  child: Row(
                    children: [
                      Container(
                        width: 0.15.sh,
                        height: 0.4.sw,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: SystemColors.white,
                          borderRadius: BorderRadius.circular(20.r),
                          boxShadow: [
                            BoxShadow(
                              color: SystemColors.systemBlue.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: const Offset(0, 0), // 아래쪽으로 그림자 위치 조정
                            ),
                          ],
                        ),
                        child: MainWidget(
                          "외출증",
                          Image.asset("assets/outdoor.png"),
                          () => Get.toNamed("/outdoor"),
                        ),
                      ),
                      SizedBox(
                        width: 0.1.sw,
                      ),
                      Container(
                        width: 0.15.sh,
                        height: 0.4.sw,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: SystemColors.white,
                          borderRadius: BorderRadius.circular(20.r),
                          boxShadow: [
                            BoxShadow(
                              color: SystemColors.systemBlue.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: const Offset(0, 0), // 아래쪽으로 그림자 위치 조정
                            ),
                          ],
                        ),
                        child: MainWidget("현장체험학습\n요청서",
                            Image.asset("assets/experience.png"), () => null),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                Container(
                  margin: EdgeInsets.only(left: 50.w),
                  child: Row(
                    children: [
                      Container(
                        width: 0.15.sh,
                        height: 0.4.sw,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: SystemColors.white,
                          borderRadius: BorderRadius.circular(20.r),
                          boxShadow: [
                            BoxShadow(
                              color: SystemColors.systemBlue.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: const Offset(0, 0), // 아래쪽으로 그림자 위치 조정
                            ),
                          ],
                        ),
                        child: MainWidget("조퇴증",
                            Image.asset("assets/gohome.png"), () => null),
                      ),
                      SizedBox(
                        width: 0.1.sw,
                      ),
                      Container(
                        width: 0.15.sh,
                        height: 0.4.sw,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: SystemColors.white,
                          borderRadius: BorderRadius.circular(20.r),
                          boxShadow: [
                            BoxShadow(
                              color: SystemColors.systemBlue.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: const Offset(0, 0), // 아래쪽으로 그림자 위치 조정
                            ),
                          ],
                        ),
                        child: MainWidget(
                            "이석증", Image.asset("assets/room.png"), () => null),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
