//widget flutter
import 'package:flutter/material.dart';

//commons widgets
import 'package:app_delivery/src/features/presentation/commons_widgets/title_page.dart';

//styles
import 'package:app_delivery/src/colors/colors.dart';

//Widgets Headers
Widget headers(
  BuildContext context,
  String textHeader,
  String textAction,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: TitlePage(
          title: textHeader,
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      Spacer(),
      InkWell(
        onTap: () => {},
        child: Row(
          children: [
            TitlePage(
              title: textAction,
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            Icon(
              Icons.play_arrow,
              size: 15,
            )
          ],
        ),
      ),
    ],
  );
}
