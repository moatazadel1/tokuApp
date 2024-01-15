import 'package:flutter/material.dart';
import 'package:toku/Components/item.dart';
import 'package:toku/Constants/assets_manager.dart';
import '../models/data_model.dart';

class ColorsScreen extends StatelessWidget {
  static const routeName = 'colorsScreen';

  final List<DataModel> colors = [
    DataModel(
      image: AssetsManager.blackColor,
      entext: 'Black',
      jptext: "Kuro",
      sound: AssetsManager.blackSound,
    ),
    DataModel(
        image: AssetsManager.brownColor,
        entext: 'Brown',
        jptext: "Chairo",
        sound: AssetsManager.brownSound),
    DataModel(
        image: AssetsManager.dustyYellowColor,
        entext: 'Dusty Yellow',
        jptext: 'Dasutiierō',
        sound: AssetsManager.dustyYellowSound),
    DataModel(
        image: AssetsManager.grayColor,
        entext: 'Gray',
        jptext: "Gurē",
        sound: AssetsManager.graySound),
    DataModel(
        image: AssetsManager.greenColor,
        entext: 'Green',
        jptext: "Midori",
        sound: AssetsManager.greenSound),
    DataModel(
        image: AssetsManager.redColor,
        entext: 'Red',
        jptext: "Aka",
        sound: AssetsManager.redSound),
    DataModel(
        image: AssetsManager.whiteColor,
        entext: 'White',
        jptext: "Shiro",
        sound: AssetsManager.whiteSound),
    DataModel(
        image: AssetsManager.yellowColor,
        entext: 'Yellow',
        jptext: "Kiiro",
        sound: AssetsManager.yellowSound),
  ];
  ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFfef6db),
        appBar: AppBar(
          title: const Text("Colors"),
          backgroundColor: const Color(0xFF47302b),
        ),
        body: ListView.builder(
            itemCount: colors.length,
            itemBuilder: (context, index) {
              return Item(
                data: colors[index],
                color: const Color(0xff79359F),
              );
            }));
  }
}
