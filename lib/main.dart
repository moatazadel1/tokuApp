import 'package:flutter/material.dart';
import 'package:toku/screens/colors_screen.dart';
import 'package:toku/screens/family_members_screen.dart';
import 'package:toku/screens/home_screen.dart';
import 'package:toku/screens/numbers_screen.dart';
import 'package:toku/screens/phrases_screen.dart';

void main() {
  runApp(const Toku());
}

class Toku extends StatelessWidget {
  const Toku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      routes: {
        NumbersScreen.routeName: (context) => NumbersScreen(),
        FamilyMembersScreen.routeName: (context) => FamilyMembersScreen(),
        PhrasesScreen.routeName: (context) => PhrasesScreen(),
        ColorsScreen.routeName: (context) => ColorsScreen(),
      },
    );
  }
}
