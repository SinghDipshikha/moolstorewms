// ignore_for_file: constant_identifier_names
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Auth/splash.dart';
import 'package:moolwmsstore/View/Auth/welcome.dart';
import 'package:moolwmsstore/View/Auth/verified.dart';

class RouteTable {
  static const String splash = '/splash';
  static const String welcome = '/welcome';
  static const String verify = '/verify';

  static final List<GetPage> pages = [
    GetPage(
      name: '/splash',
      page: () => Splash(),
    ),
    GetPage(
      name: '/welcome',
      page: () => Welcome(),
    ),
    GetPage(
      name: '/verify',
      page: () => Verified(),
    ),
  ];
}
