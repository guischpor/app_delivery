import 'package:flutter/material.dart';

class BuildButtonLogo extends StatelessWidget {
  final Function onPressed;
  final String title;
  final AssetImage assetImage;

  BuildButtonLogo({
    this.onPressed,
    this.title,
    this.assetImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 45,
      child: RaisedButton(
          onPressed: onPressed,
          color: Theme.of(context).buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: assetImage,
                width: 20,
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
