part of 'editstd_bloc.dart';

@freezed
class EditstdEvent with _$EditstdEvent {
  const factory EditstdEvent.updatedphoto({
    required String photo,
  }) = Updatedphoto;
}
