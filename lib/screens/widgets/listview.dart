import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_sample/screens/details_screen.dart';

import '../../database/Functions/Modals/modals.dart';
import '../../database/Functions/functons_db.dart';
import 'edit_details.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ValueListenableBuilder(
      valueListenable: notifierstdlist,
      builder:
          (BuildContext context, List<StdModal> studentlist, Widget? child) {
        return ListView.separated(
            shrinkWrap: true,
            itemBuilder: (ctx, index) {
              final data = studentlist[index];

              return ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    return Details(
                      data: data,
                    );
                  }));
                },
                title: Text(data.name),
                leading: CircleAvatar(
                  backgroundImage: FileImage(File(data.photo)),
                  radius: 30,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (ctx) {
                            return Editpage(stddata: data);
                          }),
                        );
                      },
                      icon: const Icon(Icons.edit),
                    ),
                    IconButton(
                      onPressed: () {
                        deletealert(context, data);
                      },
                      icon: const Icon(Icons.delete_outline_outlined),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (ctx, index) {
              return const Divider();
            },
            itemCount: studentlist.length);
      },
    );
  }

  void deletealert(BuildContext context, StdModal data) {
    Widget cancelButton = TextButton(
      child: const Text("Cancel"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: const Text("Yes"),
      onPressed: () {
        delete(data.key);
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Conform Delete"),
      content: const Text("Are you sure to Delete"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
