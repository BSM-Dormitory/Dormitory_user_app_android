import 'package:app/main.dart';
import 'package:app/ui/view/enter_dormitory/enter_dormitory.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  GetPage(
    name: '/',
    page: () => MyApp(),
  ),
  GetPage(
    name: '/enter',
    page: () => EnterDormtiroy(),
  ),
];
