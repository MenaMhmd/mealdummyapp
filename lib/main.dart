import 'package:flutter/material.dart';
import 'package:mealapp/screens/Category_screens.dart';
import 'package:mealapp/screens/Categorymealscreen.dart';
import 'package:mealapp/screens/Meal.dart';
import 'package:mealapp/screens/detailsscreen.dart';
import 'package:mealapp/screens/filter_screen.dart';
import 'package:mealapp/screens/tab_screen.dart';

import 'model/Meal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(238, 234, 234, 1.0),
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1:TextStyle(
            color: Color.fromRGBO(20, 50, 50, 1),
          ),
          bodyText2: TextStyle(
              color: Color.fromRGBO(20, 50, 50, 1),
          ),

        ),
      ),
      routes: {
      // '/':(context)=>Tabscreen(),
        Categoryscreens.id:(context)=>Categoryscreens(),
        Categorymealscreen.id:(context)=>Categorymealscreen(),
        Detailsscreen.id:(context)=>Detailsscreen(),
        Filterscreen.id:(context)=>Filterscreen(),
        Mealscreen.id:(context)=>Mealscreen(),
      },
      home: Tabscreen(),
    );
  }
}

