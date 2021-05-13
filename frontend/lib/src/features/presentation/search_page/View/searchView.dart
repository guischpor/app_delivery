//flutter

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

//commons widgets
//import 'package:app_delivery/src/features/presentation/commons_widgets/headers.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/title_page.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/header_double.dart';
import 'package:app_delivery/src/features/presentation/commons_widgets/card_vertical.dart';
//import 'package:app_delivery/src/features/presentation/commons_widgets/headerText.dart';

//styles
import 'package:app_delivery/src/colors/colors.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.black,
                size: 32,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.centerLeft,
                        child: TitlePage(
                          title: 'Search',
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      _searchInput(context),
                      SizedBox(height: 40),
                      headerDoubleText(
                        textHeader: 'Recent search',
                        textAction: 'Clear All',
                        func: () => {},
                      ),
                      _sliderRecentSearch(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _searchInput(BuildContext context) {
  return Container(
    height: 40,
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.only(left: 5),
    decoration: BoxDecoration(
      color: colorInputSearch,
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5),
          prefixIcon: Icon(
            Icons.search,
            color: cinza,
          ),
          hintText: 'Search',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )),
    ),
  );
}

//slider de Busca Recentes
Widget _sliderRecentSearch() {
  return Container(
    margin: EdgeInsets.only(top: 10),
    height: 190,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return cardVertical(
              context: context,
              width: 160,
              height: 120,
              title: "Andy & Cindy's Diner",
              subTitle: "87 Botsford Circle Apt",
              image: AssetImage('assets/images/imagem_card_search.jpg'),
            );
          },
        );
      },
    ),
  );
}
