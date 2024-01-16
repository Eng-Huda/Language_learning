import 'package:flutter/material.dart';
import 'package:language_learning/components/item.dart';
import 'package:language_learning/models/data1.dart';
class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Data1> List_data=const[
    Data1(image: "assets/images/colors/color_black.png", JpName: "Chichioya", EnName: "black",audio:"sounds/colors/black.wav"),
    Data1(image: "assets/images/colors/color_brown.png", JpName: "Ni", EnName: "brown",audio:"sounds/colors/brown.wav"),
    Data1(image: "assets/images/colors/color_dusty_yellow.png", JpName: "San", EnName: "dusty yellow",audio:"sounds/colors/dusty yellow.wav"),
    Data1(image: "assets/images/colors/color_gray.png", JpName: "shi", EnName: "gray",audio:"sounds/colors/gray.wav"),
    Data1(image: "assets/images/colors/color_green.png", JpName: "Go", EnName: "green",audio:"sounds/colors/green.wav"),
    Data1(image: "assets/images/colors/color_red.png", JpName: "Roku", EnName: "red",audio:"sounds/colors/red.wav"),
    Data1(image: "assets/images/colors/color_white.png", JpName: "Sebun", EnName: "white",audio:"sounds/colors/white.wav"),
    Data1(image: "assets/images/colors/yellow.png", JpName: "hachi", EnName: "yellow",audio:"sounds/colors/yellow.wav"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Colors",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor:   Color(0xFF46322B),
          foregroundColor: Colors.white,
        ),
        body: ListView.builder(itemCount: List_data.length,itemBuilder: (context,index){return Item(data: List_data[index],color:Color(0xFF79359F));}));

  }
}
