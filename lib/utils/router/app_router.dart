import 'package:app/ui/view/admin/home/admin_home.dart';
import 'package:app/ui/view/admin/outdoor/list.dart';
import 'package:app/ui/view/admin/outdoor/outdoor_detail.dart';
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
    page: () => const OutDoorPage(),
  ),
  GetPage(
    name: "/admin/home",
    page: () => MyAdminHome(),
  ),
  GetPage(
    name: "/admin/outdoor/list",
    page: () => OutdoorList(),
  ),
  GetPage(
    name: "/outdoor/:id",
    page: () => const OutdoorDetail(),
  ),
];
