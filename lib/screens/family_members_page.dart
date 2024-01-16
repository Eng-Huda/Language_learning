import 'package:flutter/material.dart';
import 'package:language_learning/components/item.dart';
import 'package:language_learning/models/data1.dart';
class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<Data1> List_data=const[
    Data1(image: "assets/images/family_members/family_father.png", JpName: "Chichioya", EnName: "father",audio:"sounds/family_members/father.wav"),
    Data1(image: "assets/images/family_members/family_daughter.png", JpName: "Ni", EnName: "daughter",audio:"sounds/family_members/daughter.wav"),
    Data1(image: "assets/images/family_members/family_grandfather.png", JpName: "San", EnName: "Grand father",audio:"sounds/family_members/grand father.wav"),
    Data1(image: "assets/images/family_members/family_mother.png", JpName: "shi", EnName: "mother",audio:"sounds/family_members/mother.wav"),
    Data1(image: "assets/images/family_members/family_grandmother.png", JpName: "Go", EnName: "grand mother",audio:"sounds/family_members/grand mother.wav"),
    Data1(image: "assets/images/family_members/family_older_brother.png", JpName: "Roku", EnName: "older brother",audio:"sounds/family_members/older bother.wav"),
    Data1(image: "assets/images/family_members/family_older_sister.png", JpName: "Sebun", EnName: "older sister",audio:"sounds/family_members/older sister.wav"),
    Data1(image: "assets/images/family_members/family_son.png", JpName: "hachi", EnName: "son",audio:"sounds/family_members/son.wav"),
    Data1(image: "assets/images/family_members/family_younger_brother.png", JpName: "younger brother", EnName: "Nine",audio:"sounds/family_members/younger brohter.wav"),
    Data1(image: "assets/images/family_members/family_younger_sister.png", JpName: "younger sister", EnName: "Ten",audio:"sounds/family_members/younger sister.wav")

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text(
            "Family Member",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xFF46322B),
          foregroundColor: Colors.white,
        ),
        body: ListView.builder(itemCount: List_data.length,itemBuilder: (context,index){return Item(data: List_data[index],color:Color(0xFF558B37));}));
  }
}
