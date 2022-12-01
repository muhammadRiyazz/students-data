import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_sample/bloc%20functions/bloc/saerch/search_bloc.dart';
import 'package:hive_sample/database/Functions/Modals/modals.dart';
import 'package:hive_sample/screens/details_screen.dart';

class SearchSearch extends StatelessWidget {
  SearchSearch({super.key});

  final _srchcontroler = TextEditingController();

  final List<StdModal> students =
      Hive.box<StdModal>("std_database").values.toList();

  late List<StdModal> search_students = List.from(students);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(SearchEvent.firstsearch());
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                return;
              },
              controller: _srchcontroler,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                prefixIcon: Icon(Icons.search),
                labelText: 'search',
              ),
              onChanged: (value) {
                BlocProvider.of<SearchBloc>(context)
                    .add(SearchEvent.search(searchtext: value));
                // searchName(value);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            // ListViewWidget(),
            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                return Expanded(
                    child: (search_students.isNotEmpty)
                        ? ListView.separated(
                            itemBuilder: (context, index) {
                              final data = state.studendlist[index];

                              return ListTile(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (ctx) {
                                    return Details(
                                      data: state.studendlist[index],
                                    );
                                  }));
                                },
                                title: Text(data.name),
                                leading: CircleAvatar(
                                  backgroundImage: FileImage(File(data.photo)),
                                  radius: 30,
                                ),
                              );
                            },
                            separatorBuilder: (context, index) => Divider(),
                            itemCount: state.studendlist.length,
                          )
                        : const Center(
                            child: Text('The Data Is Not found '),
                          ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
