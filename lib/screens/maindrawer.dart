import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/screens/Meal.dart';
import 'package:mealapp/screens/filter_screen.dart';

class Maindrawer extends StatelessWidget{
  static String id="drawer";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            color: Colors.orangeAccent,
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(30),
              width: 200,height: 100,
              child:  Text("Cooking Up!",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ),
          ListTile(
            leading: Icon(Icons.restaurant,size: 25,),
           title: Text("Meal",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(Mealscreen.id);
            },
          ),

          ListTile(
            leading: Icon(Icons.settings,size: 25,),
            title: Text("Filter",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
            onTap: (){
              Navigator.of(context).pushReplacementNamed(Filterscreen.id);
            },
          ),
        ],
      ),
    );
  }
}