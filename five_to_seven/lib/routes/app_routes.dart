import 'package:five_to_seven/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../view/first_view.dart';
import '../view/second_view.dart';
import '../view/third_view.dart';

class AppRoutes {
  Map<String, Widget Function(BuildContext)> appRoutes = {
    RoutesName.initialRoute: (context) => const FirstView(),
    RoutesName.secondView: (context) => const SecondView(),
    RoutesName.thirdView: (context) => const ThirdView(),
  };
}
