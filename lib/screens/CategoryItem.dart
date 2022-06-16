import 'package:flutter/material.dart';
import 'package:mealapp/screens/Categorymealscreen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(
      {required this.id, required this.title, required this.color});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: (){
        Navigator.of(context).pushNamed(Categorymealscreen.id,arguments: {'id': id,'title':title});
      },
      child: Container(
        child: Text(title),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
         gradient: LinearGradient(
            colors: [color.withOpacity(0.4),color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        //  color: Colors.lightGreen,

          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
