import 'package:flutter/material.dart';

class HomePaageBodyWidget extends StatelessWidget {
  const HomePaageBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Search Results'),
        ],
      ),
    );
  }
}
