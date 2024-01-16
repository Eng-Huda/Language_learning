import 'package:flutter/material.dart';
import 'package:language_learning/components/category_item.dart';
import 'package:language_learning/screens/family_members_page.dart';
import 'package:language_learning/screens/numbers_page.dart';
import 'package:language_learning/screens/phrases_page.dart';
import 'package:language_learning/screens/colors_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Toku",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF46322B),
      ),
      backgroundColor: Color(0xFFFEF6DB),
      body: Column(
        children: [
          Category(
            text: "Numbers",
            color: Color(0xFFEF9235),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return NumbersPage();
              }));
            },
          ),
          Category(
              text: "Family Member", color: Color(0xFF558B37), onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return FamilyMembersPage();
                }));
          }),
          Category(text: "Colors", color: Color(0xFF79359F), onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return ColorsPage();
                }));
          }),
          Category(text: "Phrases", color: Color(0xFF50ADC7), onTap: () { Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
                return PhrasesPage();
              }));}),
        ],
      ),
    );
  }
}
