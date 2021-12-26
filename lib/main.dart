import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(LofiBeats());

class LofiBeats extends StatelessWidget {
  final player = AudioCache();

  Expanded buildKey(Color buttonColor, int soundNum, String buttonDesc) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: buttonColor),
        onPressed: () => player.play('soundbite$soundNum.wav'),
        child: Text(
          '$buttonDesc',
          style: TextStyle(
              fontFamily: 'Rock3D', fontSize: 27.0, color: Colors.grey[200]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lofi Beats for Mads',
      home: Scaffold(
        backgroundColor: Color(0xffcfbff7),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Color(0xFF222A68), 1, 'ambience'),
              buildKey(Color(0xFF8b80f9), 2, 'soft piano'),
              buildKey(Color(0xffa62639), 3, 'chords'),
              buildKey(Color(0xff475841), 4, 'birds'),
              buildKey(Color(0xff4c3b4d), 5, 'speaking'),
            ],
          ),
        ),
      ),
    );
  }
}
