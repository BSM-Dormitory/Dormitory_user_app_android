import 'package:app/utils/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BSM Dormitory',
      debugShowCheckedModeBanner: false,
      getPages: AppRouter,
      initialRoute: '/',
    );
  }
}
