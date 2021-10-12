import 'package:hive/hive.dart';
import './hive_model.dart';

Future<void> addBook(BookModel book) async {
  await Hive.box("book").add(book);
}

Future<void> deleteBook(int index) async {
  await Hive.box("book").deleteAt(index);
}

Iterable<dynamic> getAllbook() {
  Iterable<dynamic> data = Hive.box("book").values;
  return data;
}
