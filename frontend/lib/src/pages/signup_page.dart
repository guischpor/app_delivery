//Widgtes
import 'package:app_delivery/src/widgets/build_button.dart';
import 'package:flutter/material.dart';

//Styles

//components
import 'package:app_delivery/src/widgets/back_button.dart';
import 'package:app_delivery/src/widgets/title_page.dart';
import 'package:app_delivery/src/widgets/input_field.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _dateBirthController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(
              context,
              Colors.black,
            );
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: ListView(
          children: [
            TitlePage(
              title: "Create an account",
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: InputField(
                hint: "Username",
                controller: _userNameController,
                obscure: false,
                onChanged: (value) => {},
                textInputType: TextInputType.text,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: InputField(
                hint: "Email",
                controller: _emailController,
                obscure: false,
                onChanged: (value) => {},
                textInputType: TextInputType.emailAddress,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: InputField(
                hint: "Phone",
                controller: _phoneController,
                obscure: false,
                onChanged: (value) => {},
                textInputType: TextInputType.phone,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: InputField(
                hint: "Date of Birth",
                controller: _dateBirthController,
                obscure: false,
                onChanged: (value) => {},
                textInputType: TextInputType.datetime,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: InputField(
                hint: "Password",
                controller: _passwordController,
                obscure: true,
                onChanged: (value) => {},
                textInputType: TextInputType.visiblePassword,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: BuildButton(
                onPressed: () => {},
                title: "Sign up",
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: TitlePage(
                title:
                    "By clicking Sign up you agree to the following Terms and Conditions without reservation",
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 13,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _routeLoginPage() async {
    Navigator.pushNamed(context, 'login');
  }
}
