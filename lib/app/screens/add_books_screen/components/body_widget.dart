import 'package:flutter/material.dart';
import 'package:library_app/app/common/text_form_field.dart';
import 'add_book_button.dart';
import 'text_controllers.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

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
                ),
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      TextFormFieldWidget(
                        context: context,
                        labelText: "Book name",
                        type: TextInputType.emailAddress,
                        controller: cont.getBookName,
                      ),
                      TextFormFieldWidget(
                        context: context,
                        labelText: "Author name",
                        type: TextInputType.emailAddress,
                        controller: cont.getAuthorName,
                      ),
                      TextFormFieldWidget(
                        context: context,
                        labelText: "Edition",
                        type: TextInputType.number,
                        controller: cont.getEdition,
                      ),
                      TextFormFieldWidget(
                        context: context,
                        labelText: "Printing date",
                        type: TextInputType.number,
                        controller: cont.getPrintingDate,
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
