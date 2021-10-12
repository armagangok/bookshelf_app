import 'package:flutter/material.dart';
import 'package:library_app/ui/widgets/appbar.dart';
import './widgets/bottom_app_bar_widget.dart';
import 'widgets/body_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: const AppBarWidget(text: ""),
      body: const HomePaageBodyWidget(),
      bottomNavigationBar: const BottomAppBarWidget(),
    );
  }
}
