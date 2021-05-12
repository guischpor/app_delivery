import 'package:flutter/material.dart';

//Pages
import 'package:app_delivery/src/features/presentation/welcome_page/View/welcome_page.dart';
import 'package:app_delivery/src/features/presentation/login_page/View/login_page.dart';
import 'package:app_delivery/src/features/presentation/forgot_password_page/View/forgot_password_page.dart';
import 'package:app_delivery/src/features/presentation/sign_up_page/View/signup_page.dart';
import 'package:app_delivery/src/features/presentation/tabs/tabs_page.dart';
import 'package:app_delivery/src/features/presentation/search_page/View/searchView.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgot_password': (BuildContext context) => ForgotPasswordPage(),
  'sign-up': (BuildContext context) => SignUpPage(),
  'tabs': (BuildContext context) => TabsPage(),
  'search': (BuildContext context) => SearchPage(),
};
