import 'package:get/get.dart';
import 'package:getx_five/utils/routes/routes_name.dart';
import 'package:getx_five/view/home/home_bindings.dart';
import 'package:getx_five/view/home/home_view.dart';
import 'package:getx_five/view/splash/splash_bindings.dart';
import 'package:getx_five/view/splash/splash_view.dart';

class AppRoutes {
  static List<GetPage<dynamic>>? getPages = [
    GetPage(name: RoutesName.splashView, page: () => const SplashView(), binding: SplashBindings()),
    GetPage(name: RoutesName.homeView, page: () => const HomeView(), binding: HomeBindings()),
  ];
}
