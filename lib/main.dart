import 'package:flutter/material.dart';
import 'package:navbar_animations/navbar_animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
    theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: NavBarConcept());
  }
}
