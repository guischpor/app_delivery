import 'dart:ui';
import 'package:flutter/material.dart';

//Pages
import 'package:app_delivery/pages/login_page.dart';

//Widgets
import 'package:app_delivery/widgets/build_button.dart';
import 'package:app_delivery/widgets/build_button_logo.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('./assets/images/background_03.jpg'),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'DELIVERED FAST FOOD TO YOUR DOOR',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                child: Text(
                  'Set exact location to find the right restaurants near you.',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
              ),
              Container(
                child: BuildButton(
                  onPressed: _routeLoginPage,
                  title: "Log In",
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: BuildButtonLogo(
                  onPressed: () => {},
                  title: "Connect with facebook",
                  assetImage: AssetImage('./assets/icons/facebook_512px.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _routeLoginPage() async {
    Navigator.pushNamed(context, 'login');
  }
}
