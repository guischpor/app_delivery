//widgets flutter
import 'package:flutter/material.dart';

//widgets

//Pages

//styles

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key key}) : super(key: key);

  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Profile Tab"),
      ),
    );
  }
}
