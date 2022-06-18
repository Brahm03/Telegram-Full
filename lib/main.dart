import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:telegram/core/components/theme/themes.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/routes/allroutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: Allthemes.instance.light,
        dark: Allthemes.instance.dark,
        initial: AdaptiveThemeMode.dark,
        builder: (light, dark) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Telegram app',
            theme: light,
            darkTheme: dark,
            initialRoute: '/',
            onGenerateRoute: (s) => AllRoutes.instance.ongenerateRoute(s),
          );
        });
  }
}
