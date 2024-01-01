import 'package:app/ui/widget/enums/type.dart';
import 'package:app/ui/widget/list.dart';
import 'package:app/utils/theme/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OutdoorList extends StatelessWidget {
  OutdoorList({Key? key});

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
                                "외출증\n요청 목록",
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
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    child: Column(
                      children: [
                        outDoorList(context, "2407", "박현준", ListType.allow),
                        outDoorList(context, "0000", "홍길동", ListType.waiting),
                        outDoorList(context, "9999", "길동이", ListType.reject),
                        outDoorList(context, "0001", "전우치", ListType.allow),
                        outDoorList(context, "학번임", "이름임", ListType.waiting),
                        outDoorList(context, "0002", "길똥이", ListType.reject),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
