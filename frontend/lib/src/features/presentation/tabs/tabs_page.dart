//widgets flutter
import 'package:flutter/material.dart';

//styles

//commons widgets
import 'package:app_delivery/src/features/presentation/commons_widgets/show_dialog.dart';

//Tabs
import 'package:app_delivery/src/features/presentation/tabs/explore_tab/View/explore_tab.dart';
import 'package:app_delivery/src/features/presentation/tabs/favourites_tab/View/favourites_tab.dart';
import 'package:app_delivery/src/features/presentation/tabs/my_order_tab/View/my_order_tab.dart';
import 'package:app_delivery/src/features/presentation/tabs/profile_tab/View/profile_tab.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPagetate createState() => _TabsPagetate();
}

class _TabsPagetate extends State<TabsPage> {
  //initState
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _setLocation(context);
    });
  }

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

  Future _setLocation(BuildContext context) async {
    await _alertLocation(context);
  }

  //alerta
  _alertLocation(BuildContext context) {
    showAlerta(
      context,
      AssetImage('assets/icons/icon-pin-ok.png'), //icon
      "Enable Your Location", //title
      "Please allow to use your location to show nearby restaurant on the map.", //subTitle
      "Enable Location", //titleButton
      () => {print('Enable Geolocation on App')}, //function
    );
  }
}
