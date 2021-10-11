import 'package:flutter/material.dart';
import 'app/home/homepage.dart';
import 'init_app.dart';
import './ui/theme/theme.dart';

void main() async {
  await initApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Library',
      theme: theme(),
      home: const HomePage(),
    );
  }
}
