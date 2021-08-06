import 'package:flutter/material.dart';

ThemeData buildLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    brightness: Brightness.light,
    buttonColor: Colors.redAccent,
    cardColor: Colors.white,
    backgroundColor: Colors.white,
    primaryColor: Colors.red,
    accentColor: Colors.redAccent,
    scaffoldBackgroundColor: Colors.white,
  );
}

ThemeData buildDarkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
      buttonColor: Colors.amber,
      cardColor: Color.fromRGBO(57, 48, 77, 1),
      backgroundColor: Color.fromRGBO(0, 22, 40, 1),
      primaryColor: Color.fromRGBO(31, 26, 48, 1),
      accentColor: Colors.blueAccent,
      scaffoldBackgroundColor: Color.fromRGBO(31, 26, 48, 1),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color.fromRGBO(31, 26, 48, 1),
        elevation: 10,
        selectedItemColor: Color.fromRGBO(13, 246, 227, 1),
        unselectedItemColor: Colors.white,
      ));
}
