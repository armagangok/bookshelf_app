import 'package:hive/hive.dart';
import './hive_model.dart';

Future<void> addBook(BookModel book) async {
  await Hive.box<BookModel>("book").add(book);
}

Future<void> deleteBook(int index) async {
  await Hive.box<BookModel>("book").deleteAt(index);
}

Iterable<dynamic> getAllbook() {
  Iterable<dynamic> data = Hive.box<BookModel>("book").values;
  return data;
}
