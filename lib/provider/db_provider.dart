import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../database/hive_model.dart';

class DatabaseProvider extends ChangeNotifier {
  int _selectedIndex = 0;

  final Box<BookModel> _bookBox = Hive.box<BookModel>('book');

  BookModel _selectedbook = BookModel();

  Box<BookModel> get contactsBox => _bookBox;

  BookModel get selectedBook => _selectedbook;

  ///* Updating the current selected index for that contact to pass to read from hive
  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    updateSelectedBook();
    notifyListeners();
  }

  ///* Updating the current selected contact from hive
  void updateSelectedBook() {
    _selectedbook = readFromHive()!;
    notifyListeners();
  }

  ///* reading the current selected contact from hive
  BookModel? readFromHive() {
    BookModel? getBook = _bookBox.getAt(_selectedIndex);

    return getBook;
  }

  void deleteFromHive() {
    _bookBox.deleteAt(_selectedIndex);
  }
}
