import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/route_constants.dart';
//import 'package:flutter_localization_v2/pages/about_page.dart';

import 'package:flutter_application_1/router/route_constants.dart';


import '../pages/home_page.dart';

class CustomRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomePage3());
      //case aboutRoute:
       // return MaterialPageRoute(builder: (_) => const AboutPage());
      //case settingsRoute:
       // return MaterialPageRoute(builder: (_) => const SettingsPage());
      default:
        return MaterialPageRoute(builder: (_) => const HomePage3());
    }
  }
}