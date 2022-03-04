

import 'package:flutter/material.dart';
import 'package:flutter_localization_master/pages/about.dart';
import 'package:flutter_localization_master/pages/home.dart';
import 'package:flutter_localization_master/pages/not_found.dart';
import 'package:flutter_localization_master/pages/settings.dart';
import 'package:flutter_localization_master/router/router.dart';

class CustomRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case aboutRoute:
        return MaterialPageRoute(builder: (_) => AboutPage());

    }
  }
}