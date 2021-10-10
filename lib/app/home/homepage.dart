import 'package:flutter/material.dart';
import 'package:library_app/app/common/appbar.dart';
import './widgets/bottom_app_bar_widget.dart';
import '../common/appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController bookName = TextEditingController();
    final TextEditingController authorName = TextEditingController();
    final TextEditingController edition = TextEditingController();
    final TextEditingController printingDate = TextEditingController();
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: bottomApBar(
        context,
        bookName,
        authorName,
        edition,
        printingDate,
      ),
      appBar: appBar("My Library"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Search Results'),
          ],
        ),
      ),
    );
  }
}
