import 'package:flutter/material.dart';

class NavigationService {
  static final NavigationService _instance = NavigationService.init();
  static NavigationService get instance => _instance;
  NavigationService.init();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Future<dynamic> pushNamed({required String routeName, var args}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: args);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName) {
    return navigatorKey.currentState!
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  Future<dynamic> pushNamedReplacementNamed({required String routeName, var args}) {
    return navigatorKey.currentState!.pushReplacementNamed(routeName, arguments: args);
  }

  void pop() {
    return navigatorKey.currentState!.pop();
  }
}
