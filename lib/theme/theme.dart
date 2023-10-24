import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromRGBO(199, 207, 202, 1),
  primaryColor: const Color.fromRGBO(45, 73, 76, 1),
  cardColor: const Color.fromRGBO(255, 73, 76, 1),

  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Color.fromRGBO(45, 73, 76, 1),
    foregroundColor: Color.fromRGBO(0, 0, 0, 1),
    centerTitle: true,
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color.fromRGBO(45, 73, 76, 1),
    onPrimary: Color.fromRGBO(0, 0, 0, 1),
    secondary: Color.fromRGBO(138, 168, 154, 1),
    onSecondary: Color.fromRGBO(0, 0, 0, 1),
    error: Color.fromRGBO(235, 52, 52, 0),
    onError: Color.fromRGBO(235, 52, 52, 1),
    background: Color.fromRGBO(236, 242, 240, 1),
    onBackground: Color.fromRGBO(45, 73, 76, 1),
    surface: Color.fromRGBO(138, 168, 154, 1),
    onSurface: Color.fromRGBO(0, 0, 0, 1),
  ),
);
