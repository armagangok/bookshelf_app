import 'package:flutter/material.dart';
import 'package:library_app/app/common/appbar.dart';
import './widgets/bottom_app_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: const AppBarWidget(text: "Bookshelf"),
      bottomNavigationBar: const BottomAppBarWidget(),
    );
  }
}
