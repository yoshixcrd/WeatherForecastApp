import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF00BFFF);
const lightColor = const Color(0xFFF0F0F5);
const backgroundColor = const Color(0xFFFFFFFF);

ThemeData lightTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
    accentColor: Colors.white,
    textTheme: new TextTheme(
      headline1: new TextStyle(
        fontSize: 30,
        color: Colors.black12,
        fontWeight: FontWeight.bold,
      ),
    ),
    cardTheme: new CardTheme(color: Colors.white54),
    backgroundColor: backgroundColor,
    
  );
}