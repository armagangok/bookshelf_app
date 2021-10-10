import 'package:flutter/material.dart';

Widget textFormField(String labelText, TextInputType type, data) {
  
  return TextFormField(
    controller: data,
    decoration: InputDecoration(
      
      labelText: labelText,
      fillColor: Colors.white,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: const BorderSide(),
      ),
    ),
    keyboardType: type,
  );
}
