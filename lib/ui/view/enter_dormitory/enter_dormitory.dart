import 'package:app/ui/widget/calender.dart';
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
            actions: [
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  // 메뉴 아이콘을 눌렀을 때 수행할 동작을 여기에 작성합니다.
                },
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  const Calendar(),
                  Container(
                    margin: EdgeInsets.only(top: 24.h, left: 24.w),
                    width: 0.8.sw,
                    child: const Text("외출 시간"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8.0.h, left: 32.0.w),
                    alignment: Alignment.center,
                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 40.0.w),
                            child: showTimePickerButton(startTime,
                                () => _showStartTimePicker(), "시간선택", context),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin:
                                EdgeInsets.only(left: 24.0.w, right: 24.0.w),
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
                            margin: EdgeInsets.only(right: 8.0.w),
                            child: showTimePickerButton(endTime,
                                () => _showEndTimePicker(), "시간선택", context),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24.h, left: 24.w),
                    width: 0.8.sw,
                    child: const Text("사유 작성"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24.h, left: 48.w, right: 48.w),
                    child: textArea(context, "외출 사유를 구체적으로 작성해주세요."),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24.0.h),
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
                      onPressed: () {},
                      child: const Text(
                        "외출증 요청하기",
                        style: TextStyle(color: SystemColors.white),
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
