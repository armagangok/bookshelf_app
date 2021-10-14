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
        cont.getBookName.clear();
        cont.getAuthorName.clear();
        cont.getEdition.clear();
        cont.getPrintingDate.clear();
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
    bookName: cont.getBookName.text,
    authorName: cont.getAuthorName.text,
    edition: int.tryParse(cont.getEdition.text),
    printingDate: int.tryParse(cont.getPrintingDate.text),
  );
  return book;
}
