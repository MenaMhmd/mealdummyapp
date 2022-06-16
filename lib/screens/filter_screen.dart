import 'package:flutter/material.dart';

class Filterscreen extends StatefulWidget {
  static String id = "filter";

  @override
  State<Filterscreen> createState() => _FilterscreenState();
}

class _FilterscreenState extends State<Filterscreen> {
  final bool isvegetrain = false;
  final bool isvegan = false;
  final bool isloactose = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Adjust your meal selection",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
