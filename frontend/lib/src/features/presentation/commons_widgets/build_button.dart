import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  final Function onPressed;
  final String title;
  final Color color;

  BuildButton({
    this.onPressed,
    this.title,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 45,
      child: RaisedButton(
        onPressed: onPressed,
        color: color,
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
