import 'package:flutter/material.dart';
import 'package:library_app/app/screens/add_book_screen/add_book_screen.dart';
import 'package:library_app/app/screens/search_screen/search_screen.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).primaryColor,
      shape: const CircularNotchedRectangle(),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 9,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.search,
                size: 40,
              ),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: HomeScreenBodyWidget(),
                );
              },
            ),
            const VerticalDivider(width: 2, color: Colors.black),
            IconButton(
              iconSize: 40.0,
              icon: const Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddBookScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
