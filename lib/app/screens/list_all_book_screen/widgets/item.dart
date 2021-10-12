import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'slide_action_widgets.dart';

class ItemWidget extends StatelessWidget {
  final AsyncSnapshot snapshot;
  const ItemWidget({Key? key, required this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: deprecated_member_use
      body: WatchBoxBuilder(
        box: Hive.box("book"),
        builder: (context, box) {
          return ListView.builder(
            itemBuilder: (context, index) {
              var data = box.getAt(index);
              return Column(
                children: [
                  const Divider(thickness: 0.4, color: Colors.black),
                  Slidable(
                    actionPane: const SlidableDrawerActionPane(),
                    actionExtentRatio: 0.20,
                    secondaryActions: <Widget>[
                      IconSlideActionWidget(index: index),
                    ],
                    child: ListTile(
                      leading: SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Book Name: ${data.bookName}"),
                              Text("AuthorName: ${data.authorName}"),
                            ],
                          ),
                        ),
                      ),
                      trailing: SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Edition: ${data.edition.toString()}"),
                            Text("Print Date: ${data.printingDate.toString()}"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Divider(thickness: 0.4, color: Colors.black),
                ],
              );
            },
            itemCount: box.length,
          );
        },
      ),
    );
  }
}
