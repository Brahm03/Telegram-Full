import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:telegram/core/components/theme/themes.dart';
import 'package:telegram/core/init/navigator/navigation.dart';
import 'package:telegram/routes/allroutes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
            navigatorKey: NavigationService.instance.navigatorKey,
            debugShowCheckedModeBanner: false,
            title: 'Telegram app',
            theme: light,
            darkTheme: dark,
            initialRoute: '/auth',
            onGenerateRoute: (s) => AllRoutes.instance.ongenerateRoute(s),
          );
        });
  }
}
