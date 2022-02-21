import 'package:flutter/material.dart';

ThemeData userDefinedTheme () => ThemeData(
  fontFamily: "Hind",
  splashColor: Colors.limeAccent,
  scaffoldBackgroundColor: Colors.cyan,
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: Color(0x406066e0),), //TextField background
  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.light,
    primarySwatch: Colors.deepPurple, //ElevatedButton face
  ).copyWith(secondary: Colors.lightGreen),

  textTheme: const TextTheme (
    headline1: TextStyle(fontSize: 16.0, fontFamily: "Hind", fontWeight: FontWeight.bold, color: Colors.indigo),
    headline2: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
    headline3: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
    headline4: TextStyle(fontSize: 96.0, fontWeight: FontWeight.normal),
    headline5: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.red),
    headline6: TextStyle(fontSize: 16.0, letterSpacing: 3.0, wordSpacing: 4.0, fontWeight: FontWeight.bold, color: Colors.deepOrange),
    bodyText1: TextStyle(fontSize: 32.0, fontFamily: "Hind", color: Colors.purple),
    bodyText2: TextStyle(fontSize: 24.0, fontFamily: "Hind", color: Colors.red), //Text
    caption:   TextStyle(fontSize: 24.0, fontFamily: "Hind", color: Colors.cyan),
    button:    TextStyle(fontSize: 20.0, fontFamily: "Hind", color: Colors.red),
    overline:  TextStyle(fontSize: 14.0, fontFamily: "Hind", color: Colors.orangeAccent),
    subtitle1: TextStyle(fontSize: 18.0, letterSpacing: 5.0, fontFamily: "Hind", color: Colors.pinkAccent), //TextField
    subtitle2: TextStyle(fontSize: 10.0, fontFamily: "Hind", color: Colors.brown),
  ),
);
