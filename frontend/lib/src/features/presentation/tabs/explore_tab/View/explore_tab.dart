//widgets flutter
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

//widgets
import 'package:app_delivery/src/features/presentation/widgets/title_page.dart';

//Pages

//styles
import 'package:app_delivery/src/colors/colors.dart';

class ExploreTab extends StatefulWidget {
  const ExploreTab({Key key}) : super(key: key);

  @override
  _ExploreTabState createState() => _ExploreTabState();
}

class _ExploreTabState extends State<ExploreTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    children: [
                      _topBar(context),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        alignment: Alignment.centerLeft,
                        child: TitlePage(
                          title: "Discover new places",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      _sliderCards()
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

//Widget topBar
Widget _topBar(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 300,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: colorGreyBorder),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              size: 20,
              color: cinza,
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Text(
                'Search',
                style: TextStyle(
                  color: cinza,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: 45,
        height: 45,
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: bgColorButtonFilter,
          borderRadius: BorderRadius.circular(30),
        ),
        child: IconButton(
          icon: Icon(Icons.filter_list),
          iconSize: 30,
          color: Colors.white,
          onPressed: () => {},
        ),
      ),
    ],
  );
}

//sliders menu
Widget _sliderCards() {
  return Container(
    height: 350,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, index) {
              return _labelSwipe(context);
            });
      },
    ),
  );
}

//widget info slide
Widget _labelSwipe(BuildContext context) {
  return InkWell(
    onTap: () => {},
    child: Container(
      margin: EdgeInsets.all(7),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              width: 210,
              height: 250,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/photo_card_explore.jpg'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: TitlePage(
                  title: "Andys & Cindy's Diner",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: TitlePage(
                  title: "87 Botsford Circle Apt",
                  color: cinza,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 3),
                    child: Icon(
                      Icons.star,
                      size: 16,
                      color: amarelo,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 3),
                    child: TitlePage(
                      title: "4.8",
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: TitlePage(
                      title: "(233 ratings)",
                      color: cinza,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                  Container(
                    width: 72,
                    height: 18,
                    child: RaisedButton(
                      elevation: 0.5,
                      shape: StadiumBorder(),
                      color: Theme.of(context).accentColor,
                      onPressed: () => {},
                      child: TitlePage(
                        title: "Delivery",
                        color: Colors.white,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}
