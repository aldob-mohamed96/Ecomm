import 'package:flutter/material.dart';

const text_primary_color = Color.fromRGBO(0, 197, 105, 1);
final darkTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  backgroundColor: const Color(0xFF212121),
  accentColor: Colors.white,
  accentIconTheme: IconThemeData(
    color: Colors.black,
  ),
  dividerColor: Colors.black12,
);
final lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor: const Color(0xFFE5E5E5),
    accentColor: Colors.black,
    accentIconTheme: IconThemeData(
      color: Colors.white,
    ),
    dividerColor: Colors.white54,
    buttonTheme: ButtonThemeData(
        buttonColor: Colors.lightBlueAccent,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0))));
