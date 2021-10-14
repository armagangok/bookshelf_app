import 'package:flutter/material.dart';
import 'package:library_app/database/hive_model.dart';
import 'package:library_app/provider/db_provider.dart';
import 'package:provider/provider.dart';

class BookDetailScreen extends StatefulWidget {
  const BookDetailScreen({Key? key}) : super(key: key);

  @override
  _BookDetailScreenState createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  late BookModel selectedBook;
  late DatabaseProvider databaseProvider;

  @override
  Widget build(BuildContext context) {
    databaseProvider = Provider.of<DatabaseProvider>(context);
    selectedBook = databaseProvider.selectedBook;
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedBook.bookName!),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.chevron_left),
        ),
      ),
      body: Center(
        child: ListTile(
          tileColor: Colors.orange[100],
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Book Name: ${selectedBook.bookName!}",
                  style: Theme.of(context).textTheme.bodyText1),
              Text(
                "Author Name: ${selectedBook.authorName}",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                "Edition: ${selectedBook.edition}",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                "Printing Date: ${selectedBook.printingDate}",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
