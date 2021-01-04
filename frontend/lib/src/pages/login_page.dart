import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//colors
import 'package:app_delivery/src/colors/colors.dart';

//Widgets
import 'package:app_delivery/src/widgets/back_button.dart';
import 'package:app_delivery/src/widgets/build_button.dart';
import 'package:app_delivery/src/widgets/input_field.dart';
import 'package:app_delivery/src/widgets/title_page.dart';

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
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   shadowColor: Colors.transparent,
      // ),
      body: ListView(
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
                margin: EdgeInsets.only(top: 30),
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
                      TitlePage(
                        title: "Welcome Back",
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      // SizedBox(
                      //   height: 15,
                      // ),
                      // Text(
                      //   "Login to your account",
                      //   style: TextStyle(
                      //       color: cinza,
                      //       fontWeight: FontWeight.w500,
                      //       fontSize: 15),
                      // ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
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
                        margin: EdgeInsets.only(top: 20),
                        child: BuildButton(
                          onPressed: _routeHomePage,
                          title: "Log In",
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: InkWell(
                          onTap: _routeForgotPassword,
                          child: Text(
                            'Forgot your password?',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have account?",
                              style: TextStyle(
                                color: cinza,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: InkWell(
                                onTap: _routeSignUpPage,
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            )
                          ],
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

  void _routeForgotPassword() async {
    Navigator.pushNamed(context, 'forgot_password');
  }

  void _routeSignUpPage() async {
    Navigator.pushNamed(context, 'sign-up');
  }

  void _routeHomePage() async {
    Navigator.pushNamed(context, 'tabs');
  }
}
