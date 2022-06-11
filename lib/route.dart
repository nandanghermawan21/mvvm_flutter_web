import 'package:flutter/material.dart';
import 'package:suzuki/view/login_view.dart';
import 'package:suzuki/view/main_menu.dart';

String initialRouteName = RouteName.login;

class RouteName {
  static const String login = "login";
  static const String mainMenu = "mainmenu";
}

enum ParamName {
  newsModel,
  customerModel,
}

Map<String, WidgetBuilder> route = {
  RouteName.login: (BuildContext context) {
    return LoginView(
      onLoginSuccess: () {
        Navigator.of(context).pushReplacementNamed(RouteName.mainMenu);
      },
    );
  },
  RouteName.mainMenu: (BuildContext context) {
    return const MainMenuView();
  }
};
