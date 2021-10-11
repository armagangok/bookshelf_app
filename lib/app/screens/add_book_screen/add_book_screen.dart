import 'package:flutter/material.dart';
import 'package:library_app/app/components/appbar.dart';
import '../../components/text_form_field.dart';
import '../../models/models.dart';
import 'components/add_book_button.dart';

class AddBookScreen extends StatelessWidget {
  const AddBookScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: appBar(""),
        body: const Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 5,
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height / 2,
                  minWidth: MediaQuery.of(context).size.width / 1,
                ),
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      TextFormFieldWidget(
                        context: context,
                        labelText: "Book name",
                        type: TextInputType.emailAddress,
                        controller: bookName,
                      ),
                      TextFormFieldWidget(
                        context: context,
                        labelText: "Author name",
                        type: TextInputType.emailAddress,
                        controller: authorName,
                      ),
                      TextFormFieldWidget(
                        context: context,
                        labelText: "Edition",
                        type: TextInputType.number,
                        controller: edition,
                      ),
                      TextFormFieldWidget(
                        context: context,
                        labelText: "Printing date",
                        type: TextInputType.number,
                        controller: printingDate,
                      ),
                      const AddBookButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
