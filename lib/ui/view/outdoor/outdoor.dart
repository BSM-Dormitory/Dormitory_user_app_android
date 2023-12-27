import 'package:app/ui/widget/calender.dart';
import 'package:app/ui/widget/modal.dart';
import 'package:app/ui/widget/text_field.dart';
import 'package:app/ui/widget/time_picker.dart';
import 'package:app/utils/theme/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutDoorPage extends StatefulWidget {
  const OutDoorPage({Key? key});

  @override
  _OutDoorPageState createState() => _OutDoorPageState();
}

class _OutDoorPageState extends State<OutDoorPage> {
  TimeOfDay? startTime;
  TimeOfDay? endTime;
  bool startTimeSelected = false;
  bool endTimeSelected = false;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: MediaQuery.of(context).size,
      builder: (BuildContext context, child) => MaterialApp(
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
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF007AFF),
              ),
            ),
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
                          height: 0.27.sh,
                          child: const OverflowBox(
                            alignment: Alignment.topCenter,
                            maxHeight: double
                                .infinity, // 자식 위젯의 높이를 최대로 설정하여 Container의 경계를 벗어나도록 함
                            child: Calendar(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.15.sh,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40.0.h, left: 16.0.w),
                    width: 0.8.sw,
                    child: const Text("외출 시간"),
                  ),
                  Container(
                    width: 0.8.sw,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: showTimePickerButton(
                            startTime,
                            () => _showStartTimePicker(),
                            "시간선택",
                            const Icon(
                              Icons.access_time,
                              color: SystemColors.black,
                            ),
                            context,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            " ~ ",
                            style: TextStyle(
                              color: SystemColors.black,
                              fontSize: 24.sp,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: showTimePickerButton(
                            endTime,
                            () => _showEndTimePicker(),
                            "시간선택",
                            const Icon(
                              Icons.access_time,
                              color: SystemColors.black,
                            ),
                            context,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24.0.h, left: 16.0.w),
                    width: 0.8.sw,
                    child: const Text("사유 작성"),
                  ),
                  Container(
                    width: 0.8.sw,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 8.0.h),
                    child: textArea(context, "외출 사유를 구체적으로 작성해주세요."),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 24.0.h,
                      left: 24.0.w,
                      right: 24.0.w,
                    ),
                    width: 0.8.sw,
                    height: 48.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(
                            color: SystemColors.systemBlue,
                            width: 1.0,
                          ),
                        ),
                        backgroundColor: SystemColors.systemBlue,
                      ),
                      onPressed: () {
                        modal(
                            context,
                            Container(
                              alignment: Alignment.center,
                              child: Row(children: [
                                SizedBox(
                                  width: 100.w,
                                ),
                                const CircularProgressIndicator(
                                  color: SystemColors.systemBlue,
                                  strokeWidth: 4.0,
                                ),
                                SizedBox(
                                  width: 100.w,
                                ),
                              ]),
                            ),
                            const Text("외출증 요청이 전송되었습니다"),
                            "확인");
                        Future.delayed(const Duration(seconds: 2), () {
                          Navigator.pop(context);
                          Get.toNamed("/");
                        });
                      },
                      child: const Text(
                        "외출증 요청하기",
                        style: TextStyle(
                          color: SystemColors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showStartTimePicker() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        startTime = pickedTime; // 선택된 시간 업데이트
        startTimeSelected = true; // startTimeSelected 변수 업데이트
      });
    }
  }

  Future<void> _showEndTimePicker() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        endTime = pickedTime; // 선택된 시간 업데이트
        endTimeSelected = true; // endTimeSelected 변수 업데이트
      });
    }
  }
}
