import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'editstd_event.dart';
part 'editstd_state.dart';
part 'editstd_bloc.freezed.dart';

class EditstdBloc extends Bloc<EditstdEvent, EditstdState> {
  EditstdBloc() : super(EditstdState.initial()) {
    on<Updatedphoto>((event, emit) {
      final updatedimg = event.photo;
      emit(EditstdState(photo: updatedimg));
      log('edited photo =updated');
    });
  }
}
