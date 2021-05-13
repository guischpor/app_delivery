import 'package:flutter/material.dart';

//commons widgets
import 'headerText.dart';

//styles
import 'package:app_delivery/src/colors/colors.dart';

//card das imagens
Widget cardVertical({
  BuildContext context,
  double width,
  double height,
  ImageProvider<Object> image,
  String title,
  String subTitle,
}) {
  return Container(
    margin: EdgeInsets.only(right: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            width: width,
            height: height,
            fit: BoxFit.cover,
            image: image,
            //image: AssetImage('assets/images/imagem_card_search.jpg'),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5),
              child: headerText(
                  text: title, fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: headerText(
                text: subTitle,
                fontSize: 13,
                color: cinza,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
