import 'package:flutter/material.dart';
import 'package:mvvm_app/utils/routes/routes_names.dart';
import 'package:mvvm_app/view/home_screen.dart';
import 'package:mvvm_app/view/login_screen.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case (RouteNames.home):
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      case (RouteNames.login):
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());      
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(child: Text("No route is configured")),
                ));
    }
  }
}
