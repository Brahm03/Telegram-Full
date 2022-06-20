import 'package:flutter/material.dart';
import 'package:telegram/view/auth/view/auth_view.dart';
import 'package:telegram/view/chat/view/chat_view.dart';
import 'package:telegram/view/main/view/main_view.dart';
import 'package:telegram/view/settings/view/appearance/appearance_view.dart';
import 'package:telegram/view/settings/view/data_and_storage/view/data_and_storage.dart';
import 'package:telegram/view/settings/view/notification/view/notification.dart';
import 'package:telegram/view/settings/view/privacy/view/privacy_and_security.dart';

class AllRoutes {
  static final AllRoutes _instance = AllRoutes.init();
  static AllRoutes get instance => _instance;
  AllRoutes.init();

  Route? ongenerateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/':
        return pageReturner(const MainView());
      case '/chat':
        return pageReturner(ChatTypingView(
          data: (args as List),
        ));
      case '/auth':
        return pageReturner(const AuthView());
      case '/notification':
        return pageReturner(NotifyView());
      case '/privacy':
        return pageReturner(const PrivacyAndSecurity());
      case '/data_storage':
        return pageReturner(const DataAndStorage());
      case '/apperance':
        return pageReturner(const AppearanceView());  
    }
    return null;
  }

  pageReturner(Widget page) => MaterialPageRoute(builder: (_) => page);
}
