import 'package:app/ui/widget/calender.dart';
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
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: MediaQuery.of(context).size,
      builder: (BuildContext context, child) => const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(
              children: <Widget>[
                Calendar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
