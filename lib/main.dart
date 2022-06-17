import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:telegram/core/components/theme/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: Allthemes.instance.light,
        initial: Allthemes.instance.dark,
        builder: (light, dark) {
          return MaterialApp(
            title: 'Telegram app',
            theme: light,
            darkTheme: dark,
          );
        });
  }
}
