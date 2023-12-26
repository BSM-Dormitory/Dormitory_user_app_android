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
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 100.sw,
                    height: 100.sh,
                    child: Container(
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
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 0.1.sh,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 0.8.sw,
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 0.2.sw,
                                      child:
                                          Image.asset("assets/main_logo.png"),
                                    ),
                                    SizedBox(
                                      width: 0.02.sw,
                                    ),
                                    Text(
                                      "증명서 발급요청",
                                      style: TextStyle(
                                        color: SystemColors.white,
                                        fontSize: 25.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 0.08.sh,
                            ),
                            for (int i = 0; i < 5; i++)
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(bottom: 0.02.sh),
                                width: 0.8.sw,
                                height: 0.08.sh,
                                decoration: BoxDecoration(
                                  color: SystemColors.white,
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                                child: Container(
                                  width: 300.w,
                                  child: MainWidget(
                                    {
                                      0: "조기입사",
                                      1: "입실증",
                                      2: "현장체험학습요청서",
                                      3: "조퇴증",
                                      4: "이석증",
                                    }[i]!,
                                    {
                                      0: Image.asset("assets/bed.png"),
                                      1: Image.asset("assets/outdoor.png"),
                                      2: Image.asset("assets/experience.png"),
                                      3: Image.asset("assets/gohome.png"),
                                      4: Image.asset("assets/room.png"),
                                    }[i]!,
                                    {
                                      0: () => null,
                                      1: () => Get.toNamed("/outdoor"),
                                      2: () => null,
                                      3: () => null,
                                      4: () => null,
                                    }[i]!,
                                  ),
                                ),
                              )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
