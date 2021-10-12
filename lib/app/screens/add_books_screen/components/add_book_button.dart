import 'package:flutter/material.dart';
import '../../../../database/hive_helper.dart';
import '../../../../database/hive_model.dart';
import 'text_controllers.dart';

class AddBookButton extends StatelessWidget {
  const AddBookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        BookModel book = initBook(cont);
        addBook(book);
        cont.bookName.clear();
        cont.authorName.clear();
        cont.edition.clear();
        cont.printingDate.clear();
      },
      child: Text(
        "save",
        style: TextStyle(
          fontSize: 30,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

BookModel initBook(cont) {
  late final BookModel book;

  book = BookModel(
    bookName: cont.bookName.text,
    authorName: cont.authorName.text,
    edition: int.tryParse(cont.edition.text),
    printingDate: int.tryParse(cont.printingDate.text),
  );
  return book;
}
