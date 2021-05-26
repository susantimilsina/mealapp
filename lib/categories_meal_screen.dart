import 'package:flutter/material.dart';

class CategoriesMeal extends StatelessWidget {
  // final String id;
  // final String title;
  //
  // const CategoriesMeal({Key key, this.id, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routeArgs["id"];
    final title = routeArgs["title"];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("Click me"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}



