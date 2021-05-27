import 'package:flutter/material.dart';

class Favourite_Screen extends StatefulWidget {
  const Favourite_Screen({Key key}) : super(key: key);

  @override
  _Favourite_ScreenState createState() => _Favourite_ScreenState();
}

class _Favourite_ScreenState extends State<Favourite_Screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Text("This is Favourite"),
        ),
    );
  }
}
