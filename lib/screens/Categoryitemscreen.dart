import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mealapp/model/Meal.dart';
import 'package:mealapp/screens/Categorymealscreen.dart';
import 'package:mealapp/screens/detailsscreen.dart';

class Categoryitemscreen extends StatefulWidget {
  final String id;
  final String image;
  final String title;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
 // final Function removeitem;

  const Categoryitemscreen(
      {required this.image,
      required this.id,
      required this.title,
      required this.duration,
      required this.affordability,
      required this.complexity,
      //required this.removeitem
      });

  @override
  State<Categoryitemscreen> createState() => _CategoryitemscreenState();
  }

class _CategoryitemscreenState extends State<Categoryitemscreen> {
  String complex(Complexity complexity) {
    switch (complexity) {
      case Complexity.Simple:
        return 'simple';
      case Complexity.Challenging:
        return 'challenge';
      case Complexity.Hard:
        return 'hard';
      default:
        return 'unknown';
    }
  }

  String afford(Affordability affordability) {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
      case Affordability.Luxurious:
        return 'Luxurios';
      case Affordability.Pricey:
        return 'Pricey';
      default:
        return 'unknown';
    }
  }
void removemeal(String meal_id)
{
  setState(() {

  });
}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Detailsscreen.id,
                arguments: {'title': widget.title, 'id': widget.id, 'image': widget.image})
            .then((value) {
              if(value!=null)
                {
                //  widget.removeitem(value);
                }
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 4,
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Container(
                        padding: EdgeInsets.only(left: 20),
                        width: 350,
                        height: 250,
                        child: Image.network(
                          widget.image,
                          fit: BoxFit.fill,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 198.0, left: 38),
                    child: Container(
                      width: 300,
                      height: 50,
                      color: Color.fromRGBO(75, 69, 69, 0.42745098039215684),
                      child: Center(
                          child: Column(
                        children: [
                          // Text('duration ${duration.toString()}',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white  ),),
                          // SizedBox(height: 10,),
                          Text(
                            widget.title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          // Text(' ${affordability.toString()}',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white ),),
                          // SizedBox(height: 10,),
                          // Text(complexity.toString(),style: TextStyle(fontWeight:FontWeight.bold ,color: Colors.white ),),
                        ],
                      )),
                    ),
                  ),
                ]),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 40.0, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Icon(Icons.alarm),
                      Text(widget.duration.toString()),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Row(
                    children: [
                      Icon(Icons.work),
                      Text(afford(widget.affordability)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Row(
                    children: [
                      Icon(Icons.money),
                      Text(complex(widget.complexity)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
