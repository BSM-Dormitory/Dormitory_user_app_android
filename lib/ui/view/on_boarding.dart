import 'package:app/ui/widget/onboarding.dart';
import 'package:app/utils/theme/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHome extends StatelessWidget {
  MyHome({Key? key});

  @override
  Widget build(BuildContext context) {
    _launchURL() async {
      const url =
          "https://auth.bssm.kro.kr/oauth?clientId=55bc1ca2&redirectURI=http://localhost/oauth";

      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      }
    }

    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              Container(
                color: const Color(0xFF007AFF),
                width: 1.sw,
                height: 1.sh,
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 0.25.sw),
                            child: Onboarding(
                              context,
                              Image.asset("assets/onboarding1.png"),
                              "증명서 발급/수락을\n더 쉽고 빠르게",
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 0.25.sw),
                              width: 0.6.sw,
                              height: 0.75.sh,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Onboarding(
                                    context,
                                    Image.asset(
                                      "assets/onboarding2.png",
                                      fit: BoxFit.cover,
                                    ),
                                    "5가지의 증명서를\n요청/수락할 수 있어요",
                                  ),
                                ],
                              )),
                          Container(
                            margin:
                                EdgeInsets.only(left: 0.25.sw, right: 0.2.sw),
                            child: Onboarding(
                              context,
                              Image.asset("assets/onboarding3.png"),
                              "지금 바로 시작하세요!",
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: 0.6.sw,
                      height: 0.07.sh,
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL();
                        },
                        child: const Text(
                          "BSM으로 로그인하기",
                          style: TextStyle(
                            color: SystemColors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
