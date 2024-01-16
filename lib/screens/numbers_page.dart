import 'package:flutter/material.dart';
import 'package:language_learning/components/item.dart';
import 'package:language_learning/models/data1.dart';
class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Data1> List_data=const[
    Data1(image: "assets/images/numbers/number_one.png", JpName: "ichi", EnName: "One",audio:"sounds/numbers/number_one_sound.mp3"),
    Data1(image: "assets/images/numbers/number_two.png", JpName: "Ni", EnName: "Two",audio:"sounds/numbers/number_two_sound.mp3"),
    Data1(image: "assets/images/numbers/number_three.png", JpName: "San", EnName: "Three",audio:"sounds/numbers/number_three_sound.mp3"),
    Data1(image: "assets/images/numbers/number_four.png", JpName: "shi", EnName: "Four",audio:"sounds/numbers/number_four_sound.mp3"),
    Data1(image: "assets/images/numbers/number_five.png", JpName: "Go", EnName: "Five",audio:"sounds/numbers/number_five_sound.mp3"),
    Data1(image: "assets/images/numbers/number_six.png", JpName: "Roku", EnName: "Six",audio:"sounds/numbers/number_six_sound.mp3"),
    Data1(image: "assets/images/numbers/number_seven.png", JpName: "Sebun", EnName: "Seven",audio:"sounds/numbers/number_seven_sound.mp3"),
    Data1(image: "assets/images/numbers/number_eight.png", JpName: "hachi", EnName: "Eight",audio:"sounds/numbers/number_eight_sound.mp3"),
    Data1(image: "assets/images/numbers/number_nine.png", JpName: "ichi", EnName: "Nine",audio:"sounds/numbers/number_nine_sound.mp3"),
    Data1(image: "assets/images/numbers/number_ten.png", JpName: "ichi", EnName: "Ten",audio:"sounds/numbers/number_ten_sound.mp3")

  ];
  //flutter pub add audioplayers
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text(
            "Numbers",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xFF46322B),
          foregroundColor: Colors.white,
        ),
        body: ListView.builder(itemCount: List_data.length,itemBuilder: (context,index){return Item(data: List_data[index],color:  Color(0xFFEF9235),);}));
  }

  //  List<Widget> getlist(List<Number> numbers){
  //   List<Widget> Items=[];
  //   for(int i=0; i< numbers.length;i++){
  //     Items.add(Item(number: numbers[i]));
  //   }
  //   return Items;
  // }
}
