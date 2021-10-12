import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(AnimalSoundsApp());

Expanded buildButton(sound, color, image) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        final player = AudioCache();
        player.play(sound);
      },
      color: color,
      child: Image.asset(image),
    ),
  );
}

class AnimalSoundsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.teal[100],
            // appBar: AppBar(
            //     title: Text('AnimalSounds'), backgroundColor: Colors.teal),
            body: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildButton('cat.mp3', Colors.red, 'images/cat.png'),
                  Expanded(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      buildButton('dog.mp3', Colors.yellow, 'images/dog.png'),
                      buildButton('cow.mp3', Colors.orange, 'images/cow.png'),
                    ],
                  )),
                  Expanded(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                        buildButton('pig.mp3', Colors.green, 'images/pig.png'),
                        buildButton(
                            'elephant.mp3', Colors.teal, 'images/elephant.png'),
                        buildButton(
                            'rooster.mp3', Colors.blue, 'images/rooster.png'),
                      ])),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      buildButton('goat.mp3', Colors.purple, 'images/goat.jpg'),
                    ],
                  )),
                ],
              ),
            )));
  }
}
