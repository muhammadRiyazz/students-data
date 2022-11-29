part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List studendlist,
  }) = _SearchState;
  factory SearchState.initial() {
    final List<StdModal> students =
        Hive.box<StdModal>("std_database").values.toList();
    return SearchState(studendlist: students);
  }
}
