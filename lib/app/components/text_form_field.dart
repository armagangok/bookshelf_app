import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final BuildContext context;
  final String labelText;
  final TextInputType type;
  final TextEditingController controller;

  const TextFormFieldWidget({
    Key? key,
    required this.context,
    required this.labelText,
    required this.type,
    required this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          fillColor: Colors.grey[200],
          filled: true,
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        keyboardType: type,
      ),
    );
  }
}

