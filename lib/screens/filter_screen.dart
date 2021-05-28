import 'package:flutter/material.dart';
import 'package:mealapp/widgets/main_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key key}) : super(key: key);
  static const routeName = '/filter';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  urlLaunch() async {
    await canLaunch("http://flutter.dev")
        ? launch("http://flutter.dev", forceWebView: true)
        : print("Couuldnt launch");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MainDrawer(),
      body: Container(
        child: Center(
          child: GestureDetector(
            onTap: () {
              urlLaunch();
            },
            child: Container(
                height: 50,
                width: 200,
                color: Colors.red,
                child: Text("Filter Page")),
          ),
        ),
      ),
    );
  }
}
