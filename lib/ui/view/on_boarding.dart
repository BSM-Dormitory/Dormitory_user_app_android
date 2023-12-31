import 'package:app/ui/widget/main_button.dart';
import 'package:app/ui/widget/onboarding.dart';
import 'package:app/utils/theme/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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
                    Onboarding(
                      context,
                      Image.asset("assets/onboarding1.png"),
                      "증명서 발급/수락을\n더 쉽고 빠르게",
                    ),
                    SizedBox(
                      height: 0.3.sh,
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
