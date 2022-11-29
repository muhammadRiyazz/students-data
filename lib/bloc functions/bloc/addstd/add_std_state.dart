part of 'add_std_bloc.dart';

@freezed
class AddStdState with _$AddStdState {
  const factory AddStdState({
    required String photo,
  }) = _AddStdState;

  factory AddStdState.initial() {
    return const AddStdState(photo: '');
  }
}
