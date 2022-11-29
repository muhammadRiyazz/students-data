part of 'editstd_bloc.dart';

@freezed
class EditstdState with _$EditstdState {
  const factory EditstdState({required String photo}) = _EditstdState;
  factory EditstdState.initial() {
    return const EditstdState(photo: '');
  }
}
