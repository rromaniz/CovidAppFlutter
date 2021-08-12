import 'package:flutter/material.dart';

ThemeData buildLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      brightness: Brightness.light,
      buttonColor: Colors.redAccent,
      cardColor: Colors.white,
      backgroundColor: Colors.white,
      primaryColor: Color.fromRGBO(218, 76, 78, 1),
      accentColor: Color.fromRGBO(218, 76, 78, 0.7),
      scaffoldBackgroundColor: Colors.white,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        elevation: 10,
        selectedItemColor: Color.fromRGBO(218, 76, 78, 1),
        unselectedItemColor: Colors.blueGrey[600],
      ));
}

ThemeData buildDarkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
      buttonColor: Colors.amber,
      cardColor: Color.fromRGBO(53, 53, 53, 1),
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
