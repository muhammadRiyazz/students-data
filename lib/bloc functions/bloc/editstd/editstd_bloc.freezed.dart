// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'editstd_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditstdEvent {
  String get photo => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String photo) updatedphoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String photo)? updatedphoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String photo)? updatedphoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Updatedphoto value) updatedphoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Updatedphoto value)? updatedphoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Updatedphoto value)? updatedphoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditstdEventCopyWith<EditstdEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditstdEventCopyWith<$Res> {
  factory $EditstdEventCopyWith(
          EditstdEvent value, $Res Function(EditstdEvent) then) =
      _$EditstdEventCopyWithImpl<$Res, EditstdEvent>;
  @useResult
  $Res call({String photo});
}

/// @nodoc
class _$EditstdEventCopyWithImpl<$Res, $Val extends EditstdEvent>
    implements $EditstdEventCopyWith<$Res> {
  _$EditstdEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_value.copyWith(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatedphotoCopyWith<$Res>
    implements $EditstdEventCopyWith<$Res> {
  factory _$$UpdatedphotoCopyWith(
          _$Updatedphoto value, $Res Function(_$Updatedphoto) then) =
      __$$UpdatedphotoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String photo});
}

/// @nodoc
class __$$UpdatedphotoCopyWithImpl<$Res>
    extends _$EditstdEventCopyWithImpl<$Res, _$Updatedphoto>
    implements _$$UpdatedphotoCopyWith<$Res> {
  __$$UpdatedphotoCopyWithImpl(
      _$Updatedphoto _value, $Res Function(_$Updatedphoto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_$Updatedphoto(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Updatedphoto implements Updatedphoto {
  const _$Updatedphoto({required this.photo});

  @override
  final String photo;

  @override
  String toString() {
    return 'EditstdEvent.updatedphoto(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Updatedphoto &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedphotoCopyWith<_$Updatedphoto> get copyWith =>
      __$$UpdatedphotoCopyWithImpl<_$Updatedphoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String photo) updatedphoto,
  }) {
    return updatedphoto(photo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String photo)? updatedphoto,
  }) {
    return updatedphoto?.call(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String photo)? updatedphoto,
    required TResult orElse(),
  }) {
    if (updatedphoto != null) {
      return updatedphoto(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Updatedphoto value) updatedphoto,
  }) {
    return updatedphoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Updatedphoto value)? updatedphoto,
  }) {
    return updatedphoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Updatedphoto value)? updatedphoto,
    required TResult orElse(),
  }) {
    if (updatedphoto != null) {
      return updatedphoto(this);
    }
    return orElse();
  }
}

abstract class Updatedphoto implements EditstdEvent {
  const factory Updatedphoto({required final String photo}) = _$Updatedphoto;

  @override
  String get photo;
  @override
  @JsonKey(ignore: true)
  _$$UpdatedphotoCopyWith<_$Updatedphoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditstdState {
  String get photo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditstdStateCopyWith<EditstdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditstdStateCopyWith<$Res> {
  factory $EditstdStateCopyWith(
          EditstdState value, $Res Function(EditstdState) then) =
      _$EditstdStateCopyWithImpl<$Res, EditstdState>;
  @useResult
  $Res call({String photo});
}

/// @nodoc
class _$EditstdStateCopyWithImpl<$Res, $Val extends EditstdState>
    implements $EditstdStateCopyWith<$Res> {
  _$EditstdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_value.copyWith(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditstdStateCopyWith<$Res>
    implements $EditstdStateCopyWith<$Res> {
  factory _$$_EditstdStateCopyWith(
          _$_EditstdState value, $Res Function(_$_EditstdState) then) =
      __$$_EditstdStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String photo});
}

/// @nodoc
class __$$_EditstdStateCopyWithImpl<$Res>
    extends _$EditstdStateCopyWithImpl<$Res, _$_EditstdState>
    implements _$$_EditstdStateCopyWith<$Res> {
  __$$_EditstdStateCopyWithImpl(
      _$_EditstdState _value, $Res Function(_$_EditstdState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_$_EditstdState(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditstdState implements _EditstdState {
  const _$_EditstdState({required this.photo});

  @override
  final String photo;

  @override
  String toString() {
    return 'EditstdState(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditstdState &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditstdStateCopyWith<_$_EditstdState> get copyWith =>
      __$$_EditstdStateCopyWithImpl<_$_EditstdState>(this, _$identity);
}

abstract class _EditstdState implements EditstdState {
  const factory _EditstdState({required final String photo}) = _$_EditstdState;

  @override
  String get photo;
  @override
  @JsonKey(ignore: true)
  _$$_EditstdStateCopyWith<_$_EditstdState> get copyWith =>
      throw _privateConstructorUsedError;
}
