//widgets flutter
import 'package:flutter/material.dart';

//widgets

//Pages

//styles

class FavouriteTab extends StatefulWidget {
  const FavouriteTab({Key key}) : super(key: key);

  @override
  _FavouriteTabState createState() => _FavouriteTabState();
}

class _FavouriteTabState extends State<FavouriteTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Favourite Tab"),
      ),
    );
  }
}
