import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_std_event.dart';
part 'add_std_state.dart';
part 'add_std_bloc.freezed.dart';

class AddStdBloc extends Bloc<AddStdEvent, AddStdState> {
  AddStdBloc() : super(AddStdState.initial()) {
    on<Addphoto>(
      (event, emit) {
        final newimage = event.image;
        emit(AddStdState(photo: newimage));
        log('addimage');
      },
    );
  }
}
