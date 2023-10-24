import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  Future<void> playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource("note$soundNumber.wav"));
  }

  buildSound({required Color color, required int soundNumber}) {
   return TextButton(
      onPressed: () {
        playSound(soundNumber);
      },
      child:  Container(color : color,height: 100, width: double.infinity),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildSound(color: Colors.red, soundNumber: 1),
              buildSound(color: Colors.orange, soundNumber: 2),
              buildSound(color: Colors.blue, soundNumber: 3),
              buildSound(color: Colors.purple, soundNumber: 4),
              buildSound(color: Colors.green, soundNumber: 5),
              buildSound(color: Colors.yellow, soundNumber: 6),
              buildSound(color: Colors.indigoAccent, soundNumber: 7),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
