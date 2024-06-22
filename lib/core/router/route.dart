import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:foodui/main.dart';
import 'package:foodui/presentation/auth/presentation/sign_in.dart';
import 'package:foodui/presentation/auth/presentation/sign_up.dart';
import 'package:foodui/presentation/bottom_app_bar/tab_bar_page.dart';
import 'package:foodui/presentation/home/map/view/map_view.dart';
import 'package:foodui/presentation/home/presentation/item_info_page.dart';
import 'package:foodui/splash_page.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class RouteGenerator {
  static final RouteGenerator _generator = RouteGenerator._init();
  static RouteGenerator get router => _generator;

  RouteGenerator._init();

  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {

      case 'splash':
        return _navigate(SplashPage());
      case 'signUp':
        return _navigate(SignUpPage());
      case 'signIn':
        return _navigate(SignInPage());
      case 'tabbar':
        return _navigate(TabBarPage());
        case 'itemInfo':
        return _navigate(ItemInfoPage());
         case 'map':
        return _navigate(YandexMapWitget());

      default:
    }
    return null;
  }

  MaterialPageRoute _navigate(Widget widget) {
    return MaterialPageRoute(builder: (contex) => widget);
  }
}
