import 'package:app/ui/widget/calender.dart';
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
                  Calendar(),
                  Container(
                    margin: EdgeInsets.only(top: 24.h, left: 24.w),
                    width: 0.8.sw,
                    child: Text("외출 시간"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24.h, left: 48.w),
                    child: Row(
                      children: [
                        showTimePickerButton(startTime,
                            () => _showStartTimePicker(), "시간선택", context),
                        Container(
                          margin: EdgeInsets.only(left: 40.w, right: 40.w),
                          child: Text(
                            " ~ ",
                            style: TextStyle(
                              color: SystemColors.black,
                              fontSize: 24.sp,
                            ),
                          ),
                        ),
                        showTimePickerButton(endTime,
                            () => _showEndTimePicker(), "시간선택", context),
                      ],
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
      });
    }
  }
}
