import 'package:app/ui/widget/calender.dart';
import 'package:app/ui/widget/modal.dart';
import 'package:app/ui/widget/text_field.dart';
import 'package:app/ui/widget/time_picker.dart';
import 'package:app/utils/theme/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const EnterDormtiroy());
}

class EnterDormtiroy extends StatelessWidget {
  const EnterDormtiroy({Key? key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: EnterDormtiroyPage(),
    );
  }
}

class EnterDormtiroyPage extends StatefulWidget {
  const EnterDormtiroyPage({Key? key});

  @override
  _EnterDormtiroyPageState createState() => _EnterDormtiroyPageState();
}

class _EnterDormtiroyPageState extends State<EnterDormtiroyPage> {
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
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  const Calendar(),
                  Container(
                    margin: EdgeInsets.only(top: 32.h, left: 32.w),
                    width: 0.8.sw,
                    child: const Text("외출 시간"),
                  ),
                  Container(
                    width: 0.8.sw,
                    margin: EdgeInsets.only(top: 24.h),
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
                    margin: EdgeInsets.only(top: 24.h, left: 24.w),
                    width: 0.8.sw,
                    child: const Text("사유 작성"),
                  ),
                  Container(
                    width: 0.8.sw,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 24.h),
                    child: textArea(context, "외출 사유를 구체적으로 작성해주세요."),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 24.0.h, left: 24.0.w, right: 24.0.w),
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
                        print("modal pop");
                        modal(
                          context,
                          const CircularProgressIndicator(
                            color: SystemColors.systemBlue,
                            strokeWidth: 4.0,
                          ),
                          Text("외출증 요청이 전송되었습니다"),
                          "확인",
                        );

                        Future.delayed(Duration(seconds: 2), () {
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
