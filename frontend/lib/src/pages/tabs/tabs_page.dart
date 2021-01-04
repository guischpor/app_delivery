//widgets flutter
import 'package:flutter/material.dart';

//styles

//widgets

//Tabs
import 'package:app_delivery/src/pages/tabs/explore_tab.dart';
import 'package:app_delivery/src/pages/tabs/favourites_tab.dart';
import 'package:app_delivery/src/pages/tabs/my_order_tab.dart';
import 'package:app_delivery/src/pages/tabs/profile_tab.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPagetate createState() => _TabsPagetate();
}

class _TabsPagetate extends State<TabsPage> {
  List<Widget> _widgetOptions = [
    ExploreTab(),
    MyOrderTab(),
    FavouriteTab(),
    ProfileTab()
  ];

  int _selectedItemIndex = 0;

  void _selectedWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _bottomNavigationBar(context),
        body: _widgetOptions.elementAt(_selectedItemIndex));
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30,
      selectedItemColor: Theme.of(context).accentColor,
      unselectedItemColor: Colors.grey,
      currentIndex: _selectedItemIndex,
      onTap: _selectedWidget,
      showUnselectedLabels: true,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: 'My Order',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Favourite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin),
          label: 'Profile',
        ),
      ],
    );
  }
}
