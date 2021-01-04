import 'package:flutter/material.dart';

//Styles

//Widgets
import 'package:app_delivery/src/widgets/back_button.dart';
import 'package:app_delivery/src/widgets/title_page.dart';
import 'package:app_delivery/src/widgets/input_field.dart';
import 'package:app_delivery/src/widgets/build_button.dart';

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
                color: Theme.of(context).primaryColor,
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
                  onPressed: () => {_showAlerta(context)},
                  title: "Send",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showAlerta(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          content: Container(
            height: 330,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/icons/icon-password-round.png'),
                  width: 130,
                  height: 130,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: TitlePage(
                    title: "Your password has been reset.",
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TitlePage(
                    title:
                        "You'll shortly receive an email with a code to setup a new password.",
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: BuildButton(
                    onPressed: _routeLoginPage,
                    title: "Done",
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _routeLoginPage() async {
    Navigator.pushNamed(context, 'login');
  }
}
