///app样式


import 'package:flutter/material.dart';

AppTheme appTheme = AppTheme(
  light: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.green[800]
  ),
  dark: ThemeData(
    brightness: Brightness.dark
  )
);

const TextStyle title18 = TextStyle(fontSize: 18);
const TextStyle title12 = TextStyle(fontSize: 12, letterSpacing: 0, wordSpacing: 0);
const TextStyle text_normal = TextStyle(fontSize: 12, color: Colors.black87);
const TextStyle text_hint = TextStyle(fontSize: 12, color: Colors.grey);


// divider
const Divider divider_grey = Divider(color: Colors.grey,);


///app theme
class AppTheme {
  final ThemeData light;
  final ThemeData dark;

  const AppTheme({this.light, this.dark});
}