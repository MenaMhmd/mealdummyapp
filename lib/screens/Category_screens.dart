import 'package:flutter/material.dart';
import 'package:mealapp/dummy_data.dart';
import 'package:mealapp/screens/CategoryItem.dart';
import 'package:mealapp/screens/favourite_screen.dart';
import 'package:mealapp/screens/tab_screen.dart';

import 'maindrawer.dart';

class Categoryscreens extends StatelessWidget {
static const id="categoryscreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("meal"),
      ),
      body: GridView(
          padding: EdgeInsets.all(25),
          children:
          DUMMY_CATEGORIES
              .map(
                (e) => CategoryItem(title: e.title, id: e.id, color: Colors.orangeAccent),
              )
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 3 / 2,
            crossAxisSpacing: 20,
            childAspectRatio: 2,
          )),
       drawer: Maindrawer(),
    );
  }
}
