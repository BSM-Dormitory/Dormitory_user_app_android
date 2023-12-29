import 'package:app/ui/view/on_boarding.dart';
import 'package:app/ui/view/user/outdoor/outdoor.dart';
import 'package:app/ui/view/user/home/home_page.dart';
import 'package:get/get.dart';

List<GetPage> AppRouter = [
  GetPage(
    name: '/',
    page: () => MyHome(),
  ),
  GetPage(
    name: '/user/home',
    page: () => MyUserHome(),
  ),
  GetPage(
    name: '/user/outdoor',
    page: () => OutDoorPage(),
  ),
];
