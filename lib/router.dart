import 'package:flutter/material.dart';
import 'package:login_ui/menu_page.dart';
import 'package:login_ui/plants_example/main.dart';
import 'package:login_ui/screen2.dart';

class RouteGenerator {
  static const String screenPage1 = '/screenPage1';
  static const String screenPage2 = '/screenPage2';
  static const String menuPage = '/homePage';
  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case screenPage1:
        return MaterialPageRoute(builder: (_) => const ScreenPage1());
      case screenPage2:
        return MaterialPageRoute(builder: (_) => const ScreenPage2());
      case menuPage:
        return MaterialPageRoute(builder: (_) => const MenuPage());
      default:
        throw const RouteException('Route not found');
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
