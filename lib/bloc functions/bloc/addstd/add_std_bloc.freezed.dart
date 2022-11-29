// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_std_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddStdEvent {
  String get image => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String image) addphoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String image)? addphoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String image)? addphoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Addphoto value) addphoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Addphoto value)? addphoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Addphoto value)? addphoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddStdEventCopyWith<AddStdEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStdEventCopyWith<$Res> {
  factory $AddStdEventCopyWith(
          AddStdEvent value, $Res Function(AddStdEvent) then) =
      _$AddStdEventCopyWithImpl<$Res, AddStdEvent>;
  @useResult
  $Res call({String image});
}

/// @nodoc
class _$AddStdEventCopyWithImpl<$Res, $Val extends AddStdEvent>
    implements $AddStdEventCopyWith<$Res> {
  _$AddStdEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddphotoCopyWith<$Res> implements $AddStdEventCopyWith<$Res> {
  factory _$$AddphotoCopyWith(
          _$Addphoto value, $Res Function(_$Addphoto) then) =
      __$$AddphotoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image});
}

/// @nodoc
class __$$AddphotoCopyWithImpl<$Res>
    extends _$AddStdEventCopyWithImpl<$Res, _$Addphoto>
    implements _$$AddphotoCopyWith<$Res> {
  __$$AddphotoCopyWithImpl(_$Addphoto _value, $Res Function(_$Addphoto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$Addphoto(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Addphoto implements Addphoto {
  const _$Addphoto({required this.image});

  @override
  final String image;

  @override
  String toString() {
    return 'AddStdEvent.addphoto(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Addphoto &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddphotoCopyWith<_$Addphoto> get copyWith =>
      __$$AddphotoCopyWithImpl<_$Addphoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String image) addphoto,
  }) {
    return addphoto(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String image)? addphoto,
  }) {
    return addphoto?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String image)? addphoto,
    required TResult orElse(),
  }) {
    if (addphoto != null) {
      return addphoto(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Addphoto value) addphoto,
  }) {
    return addphoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Addphoto value)? addphoto,
  }) {
    return addphoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Addphoto value)? addphoto,
    required TResult orElse(),
  }) {
    if (addphoto != null) {
      return addphoto(this);
    }
    return orElse();
  }
}

abstract class Addphoto implements AddStdEvent {
  const factory Addphoto({required final String image}) = _$Addphoto;

  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$AddphotoCopyWith<_$Addphoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddStdState {
  String get photo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddStdStateCopyWith<AddStdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStdStateCopyWith<$Res> {
  factory $AddStdStateCopyWith(
          AddStdState value, $Res Function(AddStdState) then) =
      _$AddStdStateCopyWithImpl<$Res, AddStdState>;
  @useResult
  $Res call({String photo});
}

/// @nodoc
class _$AddStdStateCopyWithImpl<$Res, $Val extends AddStdState>
    implements $AddStdStateCopyWith<$Res> {
  _$AddStdStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_AddStdStateCopyWith<$Res>
    implements $AddStdStateCopyWith<$Res> {
  factory _$$_AddStdStateCopyWith(
          _$_AddStdState value, $Res Function(_$_AddStdState) then) =
      __$$_AddStdStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String photo});
}

/// @nodoc
class __$$_AddStdStateCopyWithImpl<$Res>
    extends _$AddStdStateCopyWithImpl<$Res, _$_AddStdState>
    implements _$$_AddStdStateCopyWith<$Res> {
  __$$_AddStdStateCopyWithImpl(
      _$_AddStdState _value, $Res Function(_$_AddStdState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_$_AddStdState(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddStdState implements _AddStdState {
  const _$_AddStdState({required this.photo});

  @override
  final String photo;

  @override
  String toString() {
    return 'AddStdState(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddStdState &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddStdStateCopyWith<_$_AddStdState> get copyWith =>
      __$$_AddStdStateCopyWithImpl<_$_AddStdState>(this, _$identity);
}

abstract class _AddStdState implements AddStdState {
  const factory _AddStdState({required final String photo}) = _$_AddStdState;

  @override
  String get photo;
  @override
  @JsonKey(ignore: true)
  _$$_AddStdStateCopyWith<_$_AddStdState> get copyWith =>
      throw _privateConstructorUsedError;
}
