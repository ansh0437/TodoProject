import 'package:flutter/material.dart';
import 'pages/splash/splash_page.dart';
import '../constants/pages.dart';

class TodoNavigator {
  static Map<String, WidgetBuilder> get routes {
    return <String, WidgetBuilder>{
      Pages.splash: (BuildContext context) => SplashPage(),
    };
  }
}
