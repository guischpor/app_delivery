import 'package:app_delivery/widgets/build_button.dart';
import 'package:app_delivery/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//colors
import 'package:app_delivery/colors/colors.dart';

//Widgets
import 'package:app_delivery/widgets/back_button.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.black,
      ),
    );

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                width: double.infinity,
                height: 350,
                fit: BoxFit.cover,
                image: AssetImage('./assets/images/imagem_login_2.jpg'),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: backButton(
                  context,
                  Colors.white,
                ),
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(0, -20),
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Login to your account",
                        style: TextStyle(
                            color: cinza,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: InputField(
                          textInputType: TextInputType.emailAddress,
                          hint: "Email",
                          controller: _emailController,
                          onChanged: (value) {},
                          obscure: false,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: InputField(
                          hint: "Password",
                          controller: _passwordController,
                          onChanged: (value) {},
                          obscure: true,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: BuildButton(
                          onPressed: () => {},
                          title: "Log In",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
