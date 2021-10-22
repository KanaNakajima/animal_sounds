import 'package:flutter/material.dart';
import 'screen.dart';

void main() => runApp(AnimalSoundsApp());

class AnimalSoundsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.white,
      ),
      home: Screen(),
    );
  }
}
