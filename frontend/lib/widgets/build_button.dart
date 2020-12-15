import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  final Function onPressed;
  final String title;
  final AssetImage assetImage;

  BuildButton({
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
        color: Theme.of(context).accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
