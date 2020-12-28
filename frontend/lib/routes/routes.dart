import 'package:flutter/material.dart';

//Pages
import 'package:app_delivery/pages/welcome_page.dart';
import 'package:app_delivery/pages/login_page.dart';
import 'package:app_delivery/pages/forgot_password_page.dart';
import 'package:app_delivery/pages/signup_page.dart';
import 'package:app_delivery/pages/tabs/tabs_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgot_password': (BuildContext context) => ForgotPasswordPage(),
  'sign-up': (BuildContext context) => SignUpPage(),
  'tabs': (BuildContext context) => TabsPage(),
};
