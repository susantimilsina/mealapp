import 'package:flutter/material.dart';
import 'package:mealapp/screens/categories_screen.dart';
import 'package:mealapp/screens/fav_screen.dart';
import 'package:mealapp/widgets/main_drawer.dart';

class Tab_screen extends StatefulWidget {
  const Tab_screen({Key key}) : super(key: key);

  @override
  _Tab_screenState createState() => _Tab_screenState();
}

class _Tab_screenState extends State<Tab_screen> {
  List<Map> _currentPages = [
    {"title": "Daily Meals", "screen": CategoriesScreen()},
    {"title": "Favorite", "screen": Favourite_Screen()}
  ];
  int indexPage = 0;

  onPageSelected(int index) {
    setState(() {
      indexPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentPages[indexPage]["title"]),
      ),
      body: _currentPages[indexPage]["screen"],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexPage,
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          onPageSelected(index);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit), title: Text("Daily Meals"), backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), title: Text("Favorite"))
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
