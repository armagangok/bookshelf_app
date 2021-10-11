import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:library_app/database/hive_helper.dart';

class IconSlideActionWidget extends StatelessWidget {
  final int index;
  const IconSlideActionWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconSlideAction(
      caption: 'Delete',
      color: Colors.red,
      icon: Icons.delete,
      onTap: () {
        deleteBook(index);
      }, 
    );
  }
}
