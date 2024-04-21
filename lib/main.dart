import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

Future<void> playSound(int sound) async {
  final player = AudioPlayer();
  await player.play(AssetSource('note$sound.wav'));
}

Expanded buildButton(int soundNum, Color col) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: col,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
      onPressed: () {
        playSound(soundNum);
      },
      child: const Text(''),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              buildButton(1, Colors.red),
              buildButton(2, Colors.orange),
              buildButton(3, Colors.yellow),
              buildButton(4, Colors.green),
              buildButton(5, Colors.teal),
              buildButton(6, Colors.blue),
              buildButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
