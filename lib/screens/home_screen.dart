import 'package:flutter/material.dart';
import 'package:toku/Components/category.dart';
import 'package:toku/screens/colors_screen.dart';
import 'package:toku/screens/family_members_screen.dart';
import 'package:toku/screens/numbers_screen.dart';
import 'package:toku/screens/phrases_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfef6db),
      appBar: AppBar(
          title: const Text("Toku"), backgroundColor: const Color(0xFF47302b)),
      body: Column(
        children: [
          Category(
            color: const Color(0xfffa9532),
            text: "Numbers",
            onTap: () {
              Navigator.of(context).pushNamed(NumbersScreen.routeName);
            },
          ),
          Category(
            color: const Color(0xff558B37),
            text: "Family Members",
            onTap: () {
              Navigator.of(context).pushNamed(FamilyMembersScreen.routeName);
            },
          ),
          Category(
              color: const Color(0xff79359F),
              text: "Colors",
              onTap: () {
                Navigator.of(context).pushNamed(ColorsScreen.routeName);
              }),
          Category(
            color: const Color(0xff50ADC7),
            text: "Phrases",
            onTap: () {
              Navigator.of(context).pushNamed(PhrasesScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
