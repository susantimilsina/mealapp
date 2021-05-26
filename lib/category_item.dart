import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/categories_meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String id;
  final Color color;

  CategoryItem(this.title, this.color, this.id);

  gotoNextScreen(BuildContext context) {
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    //   return CategoriesMeal(
    //     id: id,
    //     title: title,
    //   );
    // }));
    Navigator.of(context).pushNamed('/categories-meal', arguments: {
      "id" : id,
      "title" : title
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => gotoNextScreen(context),
      splashColor: color.withOpacity(0.1),
      borderRadius: BorderRadius.circular(25),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
