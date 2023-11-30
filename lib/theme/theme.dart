import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scaled_size/scaled_size.dart';

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
    error: Color.fromRGBO(235, 52, 52, 1),
    onError: Color.fromRGBO(235, 52, 52, 1),
    background: Color.fromRGBO(236, 242, 240, 1),
    onBackground: Color.fromRGBO(45, 73, 76, 1),
    surface: Color.fromRGBO(138, 168, 154, 1),
    onSurface: Color.fromRGBO(0, 0, 0, 1),
  ),
  textTheme: TextTheme(
    displayLarge: const TextStyle(
      color: Color.fromRGBO(255, 255, 255, 1),
      fontSize: 40,
      fontFamily: 'PlayfairDisplay',
    ),
    displayMedium: const TextStyle(
      fontSize: 20,
    ),
    labelMedium: const TextStyle(
      color: Color.fromRGBO(0, 0, 0, 1),
      fontSize: 20,
      fontFamily: 'PlayfairDisplay',
    ),
    titleMedium: const TextStyle(
      color: Color.fromRGBO(45, 73, 76, 1),
      fontSize: 20,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    ),
    bodySmall: const TextStyle(
      color: Color.fromRGBO(0, 0, 0, 1),
      fontSize: 14,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    ),
    headlineLarge: const TextStyle(
      color: Color.fromRGBO(255, 255, 255, 1),
      fontSize: 20,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle(
      color: const Color.fromRGBO(45, 73, 76, 1),
      fontSize: 30,
      fontFamily: 'Montserrat',
      shadows: [
        Shadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 1,
            offset: const Offset(
              0,
              1,
            ))
      ],
    ),
    bodyMedium: const TextStyle(
      color: Color.fromRGBO(45, 73, 76, 1),
      fontSize: 18,
      fontFamily: 'Montserrat',
    ),
  ),
  cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
    primaryColor: Color.fromRGBO(224, 198, 77, 1),
    applyThemeToAll: true,
  ),
  cardTheme: const CardTheme(
    color: Color.fromRGBO(255, 255, 255, 1),
    elevation: 3,
  ),
  inputDecorationTheme: const InputDecorationTheme(
      filled: true, fillColor: Color.fromRGBO(236, 242, 240, 1)),
);
