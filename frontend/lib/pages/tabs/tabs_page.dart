//widgets flutter
import 'package:flutter/material.dart';

//styles

//widgets

class TabsPage extends StatefulWidget {
  @override
  _TabsPagetate createState() => _TabsPagetate();
}

class _TabsPagetate extends State<TabsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
      body: Center(
        child: Text("TABS Page"),
      ),
    );
  }
}

Widget _bottomNavigationBar(BuildContext context) {
  return BottomNavigationBar(
    iconSize: 30,
    selectedItemColor: Theme.of(context).accentColor,
    unselectedItemColor: Colors.grey,
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
