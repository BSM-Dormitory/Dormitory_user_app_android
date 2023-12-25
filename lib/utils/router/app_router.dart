import 'package:app/ui/view/outdoor/outdoor.dart';
import 'package:app/ui/view/home/home_page.dart';
import 'package:get/get.dart';

List<GetPage> AppRouter = [
  GetPage(
    name: '/',
    page: () => MyHome(),
  ),
  GetPage(
    name: '/outdoor',
    page: () => OutDoorPage(),
  ),
];
