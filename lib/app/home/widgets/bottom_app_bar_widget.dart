import 'package:flutter/material.dart';
import 'package:library_app/app/screens/add_book_screen/modal_bottom_sheet.dart';

Widget bottomApBar(
  BuildContext context,
  bookName,
  authorName,
  edition,
  printingDate,
) {
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
            iconSize: 30.0,
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          const VerticalDivider(
            width: 2,
            color: Colors.black,
          ),
          IconButton(
            iconSize: 30.0,
            icon: const Icon(Icons.list),
            onPressed: () {},
          ),
          const VerticalDivider(
            width: 2,
            color: Colors.black,
          ),
          IconButton(
            iconSize: 30.0,
            icon: const Icon(Icons.add),
            onPressed: () {
              bottomSheet(
                context,
                bookName,
                authorName,
                edition,
                printingDate,
              );
            },
          ),
        ],
      ),
    ),
  );
}
