import 'package:flutter/material.dart';

import 'Category_screens.dart';
import 'favourite_screen.dart';

class Tabscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>Mytab();
}
class Mytab extends State<Tabscreen>{
  int dex=0;
  List<Widget>screen=[
    Categoryscreens(),
    Favouritescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screen[dex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.white,
        onTap: (value){
          setState(() {
            dex=value;
          });
        },
        backgroundColor:Colors.pink ,
        currentIndex: dex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category),label: "category",),
          BottomNavigationBarItem(icon: Icon(Icons.star),label: "favourite",),
        ],
      ),

    );
  }

}