import 'package:flutter/material.dart';
import 'package:toku/Components/item.dart';
import 'package:toku/Constants/assets_manager.dart';
import '../models/data_model.dart';

class NumbersScreen extends StatelessWidget {
  static const routeName = 'numbersScreen';

  final List<DataModel> num = [
    DataModel(
        image: AssetsManager.oneImage,
        entext: 'One',
        jptext: "Ichi",
        sound: AssetsManager.oneSound),
    DataModel(
        image: AssetsManager.twoImage,
        entext: 'Two',
        jptext: "Ni",
        sound: AssetsManager.twoSound),
    DataModel(
        image: AssetsManager.threeImage,
        entext: 'Three',
        jptext: "San",
        sound: AssetsManager.threeSound),
    DataModel(
        image: AssetsManager.fourImage,
        entext: 'Four',
        jptext: "Shi",
        sound: AssetsManager.fourSound),
    DataModel(
        image: AssetsManager.fiveImage,
        entext: 'Five',
        jptext: "Go",
        sound: AssetsManager.fiveSound),
    DataModel(
        image: AssetsManager.sixImage,
        entext: 'Six',
        jptext: "Roku",
        sound: AssetsManager.sixSound),
    DataModel(
        image: AssetsManager.sevenImage,
        entext: 'Seven',
        jptext: "Sebun",
        sound: AssetsManager.sevenSound),
    DataModel(
        image: AssetsManager.eightImage,
        entext: 'Eight',
        jptext: "Hachi",
        sound: AssetsManager.eightSound),
    DataModel(
        image: AssetsManager.nineImage,
        entext: 'Nine',
        jptext: "Kyū",
        sound: AssetsManager.nineSound),
    DataModel(
        image: AssetsManager.tenImage,
        entext: 'Ten',
        jptext: "Jū",
        sound: AssetsManager.tenSound),
  ];
  NumbersScreen({super.key});

  // final Data one = const Data(
  //     image: "assets/images/numbers/number_one.png",
  //     entext: "One",
  //     jptext: "ichi",
  //     sound: "sounds/numbers/number_one_sound.mp3");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFfef6db),
        appBar: AppBar(
          title: const Text("Numbers"),
          backgroundColor: const Color(0xFF47302b),
        ),
        body: ListView.builder(
            itemCount: num.length,
            itemBuilder: (context, index) {
              return Item(
                data: num[index],
                color: Colors.orange,
              );
            }));
  }
}
