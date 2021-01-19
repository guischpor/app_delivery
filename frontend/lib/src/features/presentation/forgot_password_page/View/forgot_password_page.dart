import 'package:app_delivery/src/colors/colors.dart';
import 'package:flutter/material.dart';

//Styles

//Commons_widgets
import 'package:app_delivery/src/features/presentation/commons_widgets/back_button.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/build_button.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/input_field.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/title_page.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/show_dialog.dart';

class ForgotPasswordPage extends StatefulWidget {
  ForgotPasswordPage({Key key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController _emailController = TextEditingController();

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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              TitlePage(
                title: "Forgot Password",
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TitlePage(
                  title:
                      "Please enter your email address. You will receive a link to create a new password via email.",
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: InputField(
                  hint: "Email",
                  controller: _emailController,
                  obscure: false,
                  onChanged: (value) => {},
                  textInputType: TextInputType.emailAddress,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: BuildButton(
                  color: orange,
                  onPressed: () => {
                    showAlerta(
                      context,
                      AssetImage('assets/icons/icon-password-round.png'), //icon
                      "Your password has been reset.", //title
                      "You'll shortly receive an email with a code to setup a new password.", //subTitle
                      "Done", //titleButton
                      _routeLoginPage, //function
                    )
                  },
                  title: "Send",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _routeLoginPage() async {
    Navigator.pushNamed(context, 'login');
  }
}
