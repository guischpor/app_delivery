//flutter
import 'package:flutter/material.dart';

//Commons_widgets
import 'headerText.dart';

//colors and styles
import 'package:app_delivery/src/colors/colors.dart';

Widget headerDoubleText({
  String textHeader,
  String textAction,
  Function func,
}) {
  return Container(
    child: Row(
      children: [
        headerText(text: textHeader, fontSize: 20),
        Spacer(),
        InkWell(
          onTap: func,
          child: headerText(
              text: textAction,
              color: orange,
              fontSize: 15,
              fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}
