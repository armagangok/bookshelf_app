import 'package:hive/hive.dart';
import './hive_model.dart';

Future<void> addBook(BookModel book) async {
  Box box = await Hive.openBox("book");
  box.add(book);
}

Future<void> deleteBook(int index) async {
  Box box = await Hive.openBox("book");
  box.deleteAt(index);
}

Future<Iterable<dynamic>> getAllbook() async {
  Box box = await Hive.openBox("book");
  Iterable<dynamic> data = box.values;
  return data;
}
