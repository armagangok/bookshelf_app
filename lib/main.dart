import 'package:flutter/material.dart';
import 'package:library_app/provider/db_provider.dart';
import 'package:provider/provider.dart';
import './init_app.dart';
import './ui/theme/theme.dart';
import 'app/screens/home/homepage.dart';

void main() {
  initApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DatabaseProvider>(
      create: (_) => DatabaseProvider(),
      child: Builder(
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'My Library',
            theme: theme(),
            home: const HomePage(),
          );
        }
      ),
    );
  }
}
