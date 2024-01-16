import 'package:flutter/material.dart';
import 'package:language_learning/components/item.dart';
import 'package:language_learning/models/data1.dart';
class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Data1> List_data=const[
    Data1( JpName: "Chichioya", EnName: "Are you coming?",audio:"sounds/phrases/are_you_coming.wav"),
    Data1(JpName: "Ni", EnName: "dont_forget_to_subscribe",audio:"sounds/phrases/dont_forget_to_subscribe.wav"),
    Data1( JpName: "San", EnName: "how_are_you_feeling",audio:"sounds/phrases/how_are_you_feeling.wav"),
    Data1( JpName: "shi", EnName: "i_love_anime",audio:"sounds/phrases/i_love_anime.wav"),
    Data1(JpName: "Go", EnName: "i_love_programming",audio:"sounds/phrases/i_love_programming.wav"),
    Data1( JpName: "Roku", EnName: "programming_is_easy",audio:"sounds/phrases/programming_is_easy.wav"),
    Data1(JpName: "Sebun", EnName: "what_is_your_name",audio:"sounds/phrases/what_is_your_name.wav"),
    Data1(JpName: "hachi", EnName: "where_are_you_going",audio:"sounds/phrases/where_are_you_going.wav"),
    Data1(JpName: "hachi", EnName: "yes_CustomerProducts_im_coming",audio:"sounds/phrases/yes_im_coming.wav"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Phrases",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor:   Color(0xFF46322B),
          foregroundColor: Colors.white,
        ),
        body: ListView.builder(itemCount: List_data.length,itemBuilder: (context,index){return Item(data: List_data[index],color:Color(0xFF50ADC7));}));

  }
}
