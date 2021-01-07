//Widgets flutter
import 'package:flutter/material.dart';

//Commons Widgets
import 'build_button.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/title_page.dart';

// ignore: missing_return
Widget showAlerta(
  BuildContext context,
  AssetImage image,
  String title,
  String subTitle,
  String titleButton,
  Function onPressed,
) {
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
                image: image,
                width: 130,
                height: 130,
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: TitlePage(
                  title: title,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TitlePage(
                  title: subTitle,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: BuildButton(
                  onPressed: onPressed,
                  title: titleButton,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
