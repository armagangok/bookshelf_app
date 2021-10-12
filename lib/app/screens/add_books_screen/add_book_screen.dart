import 'package:flutter/material.dart';
import 'package:library_app/ui/widgets/appbar.dart';

import 'components/body_widget.dart';


class AddBookScreen extends StatelessWidget {
  const AddBookScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: const AppBarWidget(text: ""),
        body: const BodyWidget(),
      ),
    );
  }
}

