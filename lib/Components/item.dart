// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/data_model.dart';

class Item extends StatelessWidget {
  final DataModel data;
  final Color color;

  const Item({super.key, required this.data, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xFFfef6db),
            child: data.image == null
                ? const SizedBox()
                : Image.asset(data.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.jptext,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  data.entext,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () async {
                  await data.playSound();
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                ),
              )),
        ],
      ),
    );
  }
}
