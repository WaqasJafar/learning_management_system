// @dart=2.9

import 'package:get/get.dart';

import '../ui/Dashboard/dashboard.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: AppRoutes.splash, page: () => MainDashboard()),
    GetPage(name: AppRoutes.login, page: () => MainDashboard()),
    GetPage(name: AppRoutes.home, page: () => MainDashboard()),
    GetPage(name: AppRoutes.pagenotfound, page: () => MainDashboard()),
    GetPage(name: AppRoutes.splashpage, page: () => MainDashboard()),
    GetPage(name: AppRoutes.listitemwidget, page: () => MainDashboard()),
    GetPage(name: AppRoutes.gpacalculator, page: () => MainDashboard()),
    GetPage(name: AppRoutes.semesterschedule, page: () => MainDashboard()),

  ];
}
