import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_app/app/screens/search_screen/widgets/slide_action_widgets.dart';
import 'package:library_app/app/screens/search_screen/widgets/book_detail.dart';
import 'package:library_app/database/hive_model.dart';
import 'package:library_app/provider/db_provider.dart';
import 'package:provider/provider.dart';

class HomeScreenBodyWidget extends SearchDelegate<BookModel> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(
            context, BookModel()); // for closing the search page and going back
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return SearchFinder(query: query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return SearchFinder(query: query);
  }
}

class SearchFinder extends StatelessWidget {
  final String query;
  const SearchFinder({Key? key, required this.query}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    DatabaseProvider databaseProvider = Provider.of<DatabaseProvider>(context);
    return ValueListenableBuilder(
      valueListenable: Hive.box<BookModel>('book').listenable(),
      builder: (context, Box<BookModel> contactsBox, _) {
        var results = query.isEmpty
            ? contactsBox.values.toList() // whole list
            : contactsBox.values
                .where((c) => c.bookName!.toLowerCase().contains(query))
                .toList();

        return results.isEmpty
            ? Center(
                child: Text(
                  'No results found !',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.black),
                ),
              )
            : ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: results.length,
                itemBuilder: (context, index) {
                  final BookModel bookListItem = results[index];

                  return Slidable(
                    actionPane: const SlidableDrawerActionPane(),
                    actionExtentRatio: 0.20,
                    secondaryActions: <Widget>[
                      IconSlideActionWidget(index: index),
                    ],
                    child: ListTile(
                      onTap: () {
                        var selectedContactIndex =
                            Provider.of<DatabaseProvider>(context,
                                    listen: false)
                                .contactsBox
                                .values
                                .toList()
                                .indexOf(results[index]);
                        databaseProvider
                            .updateSelectedIndex(selectedContactIndex);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BookDetailScreen(),
                          ),
                        );
                      },
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            bookListItem.bookName!,
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            bookListItem.authorName!,
                            textScaleFactor: 1.0,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
      },
    );
  }
}
