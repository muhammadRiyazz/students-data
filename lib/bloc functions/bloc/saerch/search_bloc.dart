import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_sample/database/Functions/Modals/modals.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState.initial()) {
    on<Search>((event, emit) {
      final List<StdModal> students =
          Hive.box<StdModal>("std_database").values.toList();
      late List<StdModal> search_students = List.from(students);

      search_students = students
          .where(
            (element) => element.name.toLowerCase().contains(
                  event.searchtext.toLowerCase(),
                ),
          )
          .toList();
      emit(SearchState(studendlist: search_students));
      log('search');
      log(search_students.length.toString());
    });
  }
}
