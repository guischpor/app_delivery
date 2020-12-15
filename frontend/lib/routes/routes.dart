import 'package:app_delivery/pages/login_page.dart';
import 'package:flutter/material.dart';

//Pages
import 'package:app_delivery/pages/welcome_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage()
};
