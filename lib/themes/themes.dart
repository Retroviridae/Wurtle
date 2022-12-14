import 'package:flutter/material.dart';
import '../constants/colors.dart';

final ThemeData lightTheme = ThemeData(
  primaryColorLight: lightThemeLightShade,
  primaryColorDark: lightThemeDarkShade,
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    backgroundColor: Colors.white,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  scaffoldBackgroundColor: Colors.white,
  brightness: Brightness.light,
  textTheme: const TextTheme().copyWith(
      bodyText2: const TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
  )),
);

final ThemeData darkTheme = ThemeData(
  primaryColorLight: darkThemeLightShade,
  primaryColorDark: darkThemeDarkShade,
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    backgroundColor: Colors.black,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  scaffoldBackgroundColor: Colors.black,
  dividerColor: darkThemeLightShade,
  brightness: Brightness.dark,
  textTheme: const TextTheme().copyWith(
      bodyText2: const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  )),
);
