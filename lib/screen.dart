import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool isReal = true;
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
                  buildButton('cat.mp3', Colors.red, 'images/cat.png',
                      'images/cat_real.jpg'),
                  Expanded(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                        buildButton('dog.mp3', Colors.yellow, 'images/dog.png',
                            'images/dog_real.jpg'),
                        buildButton('cow.mp3', Colors.orange, 'images/cow.png',
                            'images/cow_real.jpg'),
                      ])),
                  Expanded(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                        buildButton('pig.mp3', Colors.green, 'images/pig.png',
                            'images/pig_real.png'),
                        buildButton('elephant.mp3', Colors.teal,
                            'images/elephant.png', 'images/elephant_real.jpg'),
                        buildButton('rooster.mp3', Colors.blue,
                            'images/rooster.png', 'images/rooster_real.jpg'),
                      ])),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      buildButton('goat.mp3', Colors.purple, 'images/goat.jpg',
                          'images/goat_real.jpg'),
                    ],
                  )),
                ],
              ),
            )));
  }

  Expanded buildButton(sound, color, simpleImage, realImage) {
    return Expanded(
        child: FlatButton(
      onPressed: () {
        setState(() {
          isReal = !isReal;
        });
        final player = AudioCache();
        player.play(sound);
      },
      color: color,
      child: isReal ? Image.asset(simpleImage) : Image.asset(realImage),
    ));
  }
}
