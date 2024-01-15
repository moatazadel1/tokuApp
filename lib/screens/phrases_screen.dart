import 'package:flutter/material.dart';
import 'package:toku/Components/item.dart';
import 'package:toku/Constants/assets_manager.dart';
import '../models/data_model.dart';

class PhrasesScreen extends StatelessWidget {
  static const routeName = 'phrasesScreen';

  final List<DataModel> phrases = [
    DataModel(
        entext: 'Are you coming',
        jptext: "Kimasu ka",
        sound: AssetsManager.areYouComing),
    DataModel(
        entext: "Don't forget to subscribe",
        jptext: "Kōdoku suru koto o wasurenaide kudasai",
        sound: AssetsManager.dontForgetToSubscribe),
    DataModel(
        entext: 'How are you feeling',
        jptext: "Go kibun wa ikagadesu ka",
        sound: AssetsManager.howAreYouFeeling),
    DataModel(
        entext: 'I love anime',
        jptext: "Watashi wa anime ga daisukidesu",
        sound: AssetsManager.iLoveAnime),
    DataModel(
        entext: 'I love programming',
        jptext: "Puroguramingu ga daisukidesu",
        sound: AssetsManager.iLoveProgramming),
    DataModel(
        entext: 'Programming is easy',
        jptext: "Puroguramingu wa kantandesu",
        sound: AssetsManager.programmingIsEasy),
    DataModel(
        entext: 'What is your name',
        jptext: "Anata no namae wa nandesuka",
        sound: AssetsManager.whatIsYourName),
    DataModel(
        entext: 'Where are you going',
        jptext: "Doko ni iku no",
        sound: AssetsManager.whereAreYouGoing),
    DataModel(
        entext: "Yes, I'm coming",
        jptext: "Hai, ikimasu",
        sound: AssetsManager.yesImComing),
  ];
  PhrasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFfef6db),
        appBar: AppBar(
          title: const Text("Phrases"),
          backgroundColor: const Color(0xFF47302b),
        ),
        body: ListView.builder(
            itemCount: phrases.length,
            itemBuilder: (context, index) {
              return Item(
                data: phrases[index],
                color: const Color(0xff50ADC7),
              );
            }));
  }
}
