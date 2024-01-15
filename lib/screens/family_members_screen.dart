import 'package:flutter/material.dart';
import 'package:toku/Components/item.dart';
import 'package:toku/Constants/assets_manager.dart';
import '../models/data_model.dart';

class FamilyMembersScreen extends StatelessWidget {
  static const routeName = 'familyMembers';

  final List<DataModel> familyMembers = [
    DataModel(
      image: AssetsManager.fatherImage,
      entext: 'Father',
      jptext: "Chichioya",
      sound: AssetsManager.fatherSound,
    ),
    DataModel(
        image: AssetsManager.motherImage,
        entext: 'Mother',
        jptext: "Hahaoya",
        sound: AssetsManager.motherSound),
    DataModel(
        image: AssetsManager.daughterImage,
        entext: 'Daughter',
        jptext: "Musume",
        sound: AssetsManager.daughterSound),
    DataModel(
        image: AssetsManager.sonImage,
        entext: 'Son',
        jptext: "Musuko",
        sound: AssetsManager.sonSound),
    DataModel(
        image: AssetsManager.grandfatherImage,
        entext: 'Grandfather',
        jptext: "Sofu",
        sound: AssetsManager.grandmotherSound),
    DataModel(
        image: AssetsManager.grandmotherImage,
        entext: 'Grandmother',
        jptext: "Sobo",
        sound: AssetsManager.grandmotherSound),
    DataModel(
        image: AssetsManager.olderBrotherImage,
        entext: 'Older Brother',
        jptext: "Ani",
        sound: AssetsManager.olderBrotherSound),
    DataModel(
        image: AssetsManager.olderSisterImage,
        entext: 'Older Sister',
        jptext: "Ane",
        sound: AssetsManager.olderSisterSound),
    DataModel(
        image: AssetsManager.youngerBrotherImage,
        entext: 'Younger Brother',
        jptext: "Otōto",
        sound: AssetsManager.youngerBrotherSound),
    DataModel(
        image: AssetsManager.youngerSisterImage,
        entext: 'Younger Sister',
        jptext: "Imōto",
        sound: AssetsManager.youngerSisterSound),
  ];
  FamilyMembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFfef6db),
        appBar: AppBar(
          title: const Text("Family Members"),
          backgroundColor: const Color(0xFF47302b),
        ),
        body: ListView.builder(
            itemCount: familyMembers.length,
            itemBuilder: (context, index) {
              return Item(
                data: familyMembers[index],
                color: const Color(0xff558B37),
              );
            }));
  }
}
