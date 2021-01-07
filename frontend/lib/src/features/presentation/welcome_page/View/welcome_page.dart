import 'dart:ui';
import 'package:flutter/material.dart';

//Pages

//Commons_widgets
import 'package:app_delivery/src/features/presentation/commons_widgets/build_button.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/build_button_logo.dart';

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
                image: AssetImage('./assets/images/background_06.jpg'),
                // image: NetworkImage(
                //     'https://images.unsplash.com/photo-1559329007-40df8a9345d8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2734&q=80'),
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
