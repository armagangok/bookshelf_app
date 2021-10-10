import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primarySwatch: Colors.orange,
    backgroundColor: Colors.orange[100],
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 25),
      bodyText1: TextStyle(fontSize: 17),
    ),
  );
}
