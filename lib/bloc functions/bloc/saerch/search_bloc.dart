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
      late List<StdModal> searchStudents = List.from(students);

      searchStudents = students
          .where(
            (element) => element.name.toLowerCase().contains(
                  event.searchtext.toLowerCase(),
                ),
          )
          .toList();
      emit(SearchState(studendlist: searchStudents));
      // log('search');
      // log(searchStudents.length.toString());
    });
    on<Firstsearch>((event, emit) {
      final List<StdModal> students =
          Hive.box<StdModal>("std_database").values.toList();

      emit(SearchState(studendlist: students));
    });
  }
}
