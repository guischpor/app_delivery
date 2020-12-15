import 'package:flutter/material.dart';

Widget backButton(BuildContext context, Color iconColor) {
  return IconButton(
    icon: Icon(
      Icons.arrow_back,
      color: iconColor,
      size: 28,
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
}
