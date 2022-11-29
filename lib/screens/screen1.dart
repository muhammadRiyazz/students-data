import 'package:flutter/material.dart';
import 'package:hive_sample/screens/screen2.dart';
import 'package:hive_sample/screens/searchscreen.dart';
import 'package:hive_sample/screens/widgets/listview.dart';

import '../database/Functions/functons_db.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    getStudents();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx1) => SearchSearch()));
            },
          ),
        ],
      ),
      body: const ListViewWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (ctx1) => ScreenTwo()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
