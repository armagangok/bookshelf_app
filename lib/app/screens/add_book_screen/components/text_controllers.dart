import 'package:flutter/material.dart';

class TextController {
  final TextEditingController _bookName = TextEditingController();
  final TextEditingController _authorName = TextEditingController();
  final TextEditingController _edition = TextEditingController();
  final TextEditingController _printingDate = TextEditingController();

  get getBookName => _bookName;
  get getAuthorName => _authorName;
  get getEdition => _edition;
  get getPrintingDate => _printingDate;
}

TextController cont = TextController();
