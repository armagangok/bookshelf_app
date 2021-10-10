import 'package:flutter/material.dart';
import 'package:library_app/database/hive_model.dart';
import '../../common/text_form_field.dart';

Future<void> bottomSheet(
        context, bookName, authorName, edition, printingDate) =>
    showModalBottomSheet(
      backgroundColor: Colors.orange[200],
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.80,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        textFormField(
                          "Book name",
                          TextInputType.emailAddress,
                          bookName,
                        ),
                        textFormField(
                          "Author name",
                          TextInputType.emailAddress,
                          authorName,
                        ),
                        textFormField(
                          "Edition",
                          TextInputType.number,
                          edition,
                        ),
                        textFormField(
                          "Printing date",
                          TextInputType.number,
                          printingDate,
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      final BookModel book = BookModel(
                        bookName: bookName,
                        authorName: authorName,
                        edition: edition,
                        printingDate: printingDate,
                      );

                      print(book);
                    },
                    child: const Text(
                      "Save",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
