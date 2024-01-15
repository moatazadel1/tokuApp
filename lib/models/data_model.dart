import 'package:audioplayers/audioplayers.dart';

class DataModel {
  final String? image;
  final String jptext;
  final String entext;
  final String sound;

  const DataModel(
      {this.image,
      required this.entext,
      required this.jptext,
      required this.sound});

  // playSound() async {
  //   final player = AudioPlayer();
  //   AudioCache audioCache = AudioCache();
  //   await audioCache.load(sound);
  //   player.play(AssetSource(sound));
  // }

  Future<void> playSound() async {
    final player = AudioPlayer();
    AudioCache audioCache = AudioCache();
    try {
      await audioCache.load(sound);
      await player.play(AssetSource(sound));
    } catch (e) {
      rethrow;
    }
  }
}
