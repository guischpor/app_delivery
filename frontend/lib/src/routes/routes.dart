import 'package:flutter/material.dart';

//Pages
import 'package:app_delivery/src/pages/welcome_page.dart';
import 'package:app_delivery/src/pages/login_page.dart';
import 'package:app_delivery/src/pages/forgot_password_page.dart';
import 'package:app_delivery/src/pages/signup_page.dart';
import 'package:app_delivery/src/pages/tabs/tabs_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgot_password': (BuildContext context) => ForgotPasswordPage(),
  'sign-up': (BuildContext context) => SignUpPage(),
  'tabs': (BuildContext context) => TabsPage(),
};
