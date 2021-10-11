import 'package:flutter/material.dart';
import '../../../../database/hive_helper.dart';
import '../../../../database/hive_model.dart';
import '../../../../models/models.dart';

class AddBookButton extends StatelessWidget {
  const AddBookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        BookModel book = initBook();
        addBook(book);
        var data = await getAllbook();
        for (var item in data) {
          print(item.bookName +
              " " +
              item.authorName +
              " " +
              item.printingDate.toString() +
              " " +
              item.edition.toString());
        }
        bookName.clear();
        authorName.clear();
        edition.clear();
        printingDate.clear();
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

BookModel initBook() {
  late final BookModel book;

  book = BookModel(
    bookName: bookName.text,
    authorName: authorName.text,
    edition: int.tryParse(edition.text),
    printingDate: int.tryParse(printingDate.text),
  );
  return book;
}
