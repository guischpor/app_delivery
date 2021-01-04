//widgets flutter
import 'package:flutter/material.dart';

//widgets

//Pages

//styles

class MyOrderTab extends StatefulWidget {
  const MyOrderTab({Key key}) : super(key: key);

  @override
  _MyOrderTabState createState() => _MyOrderTabState();
}

class _MyOrderTabState extends State<MyOrderTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("My Order Tab"),
      ),
    );
  }
}
