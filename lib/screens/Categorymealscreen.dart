import 'package:flutter/material.dart';
import 'package:mealapp/dummy_data.dart';
import 'package:mealapp/screens/Categoryitemscreen.dart';

class Categorymealscreen extends StatelessWidget {
  static String id = "categorymeal";
  @override
  Widget build(BuildContext context) {
    final routearg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final routeid = routearg['id'];
    final routetitle = routearg['title'];
    final catogry_data = DUMMY_MEALS
        .where((element) => element.categories.contains(routeid))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(routetitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Categoryitemscreen(duration: catogry_data[index].duration ,
              image: catogry_data[index].imageUrl,
              title: catogry_data[index].title,
          complexity:catogry_data[index].complexity ,
          affordability: catogry_data[index].affordability, id: catogry_data[index].id, );
        },
        itemCount: catogry_data.length,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pop();
        },
        child: Icon(Icons.delete),
      ),
    );
  }
}
