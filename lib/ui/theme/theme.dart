import 'package:flutter/material.dart';
  
ThemeData theme() {
  return ThemeData(
    primaryColor: Colors.orange[900],
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.orange[900],
    ),
    backgroundColor: Colors.orange[100],
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 25),
      bodyText1: TextStyle(fontSize: 17),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
      opacity: 1,
    ),
  );
}
