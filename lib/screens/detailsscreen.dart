import 'package:flutter/material.dart';
import 'package:mealapp/dummy_data.dart';

class Detailsscreen extends StatelessWidget {
  static String id = "detailscreen";
int index=0;
  @override
  Widget build(BuildContext context) {
    final routearg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final routeid = routearg['id'];
    final routetitle = routearg['title'];
    final routeimg = routearg['image'];
    //where عشان اخد عنصر واحد فقط مش كذا عنصر عشان كده مخترتش firstwhere
    //عشان عنصر واحد اكتب index=0مش محتاجه احدد index
    final Category_details =
        DUMMY_MEALS.firstWhere((element) => element.id == routeid);
    return Scaffold(
      appBar: AppBar(
        title: Text(Category_details.title),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Stack(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Image.network(
                  routeimg!,
                  width: double.infinity,
                  height: 200,
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 230, left: 150),
                  child: Text(
                    "Ingrediant",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.only(top: 270),
                  child: ListView.builder(
                    itemBuilder: (context, index) => Card(
                        child: (Text(
                      Category_details.ingredients[index],
                      style: TextStyle(fontSize: 17),
                    ))),
                    itemCount: Category_details.ingredients.length,
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 450, left: 150),
                  child: Text(
                    "Steps",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Container(

                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.white)),
                  padding: EdgeInsets.only(top:480),
                  child: ListView.builder(
                    itemBuilder: (context, index) => ListTile(

                      leading: CircleAvatar(
                        child: Text('${index+1}',
                          style: TextStyle(fontSize: 17),
                        )
                      ),title: Text(
                        Category_details.steps[index],
                        style: TextStyle(fontSize: 17),),),
                    itemCount: Category_details.steps.length,
                  ),
                ),
              ),
             /* Container(
                padding: EdgeInsets.all(10),
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Container(
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.only(top: 300),
                  child: ListView.builder(
                    itemBuilder: (context, index) => Card(
                        child: (Text(
                          Category_details.steps[index],
                          style: TextStyle(fontSize: 17),
                        ))),
                    itemCount: Category_details.ingredients.length,
                  ),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
