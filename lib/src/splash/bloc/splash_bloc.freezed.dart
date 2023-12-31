// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res, SplashEvent>;
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res, $Val extends SplashEvent>
    implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SplashEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SplashEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$SplashState {
  Option<Either<ConectionError, void>>? get failureOrSuccessOptions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashStateCopyWith<SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
  @useResult
  $Res call({Option<Either<ConectionError, void>>? failureOrSuccessOptions});
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSuccessOptions = freezed,
  }) {
    return _then(_value.copyWith(
      failureOrSuccessOptions: freezed == failureOrSuccessOptions
          ? _value.failureOrSuccessOptions
          : failureOrSuccessOptions // ignore: cast_nullable_to_non_nullable
              as Option<Either<ConectionError, void>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplashBlocImplCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$$SplashBlocImplCopyWith(
          _$SplashBlocImpl value, $Res Function(_$SplashBlocImpl) then) =
      __$$SplashBlocImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option<Either<ConectionError, void>>? failureOrSuccessOptions});
}

/// @nodoc
class __$$SplashBlocImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashBlocImpl>
    implements _$$SplashBlocImplCopyWith<$Res> {
  __$$SplashBlocImplCopyWithImpl(
      _$SplashBlocImpl _value, $Res Function(_$SplashBlocImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSuccessOptions = freezed,
  }) {
    return _then(_$SplashBlocImpl(
      failureOrSuccessOptions: freezed == failureOrSuccessOptions
          ? _value.failureOrSuccessOptions
          : failureOrSuccessOptions // ignore: cast_nullable_to_non_nullable
              as Option<Either<ConectionError, void>>?,
    ));
  }
}

/// @nodoc

class _$SplashBlocImpl implements _SplashBloc {
  const _$SplashBlocImpl({this.failureOrSuccessOptions});

  @override
  final Option<Either<ConectionError, void>>? failureOrSuccessOptions;

  @override
  String toString() {
    return 'SplashState(failureOrSuccessOptions: $failureOrSuccessOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashBlocImpl &&
            (identical(
                    other.failureOrSuccessOptions, failureOrSuccessOptions) ||
                other.failureOrSuccessOptions == failureOrSuccessOptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrSuccessOptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashBlocImplCopyWith<_$SplashBlocImpl> get copyWith =>
      __$$SplashBlocImplCopyWithImpl<_$SplashBlocImpl>(this, _$identity);
}

abstract class _SplashBloc implements SplashState {
  const factory _SplashBloc(
      {final Option<Either<ConectionError, void>>?
          failureOrSuccessOptions}) = _$SplashBlocImpl;

  @override
  Option<Either<ConectionError, void>>? get failureOrSuccessOptions;
  @override
  @JsonKey(ignore: true)
  _$$SplashBlocImplCopyWith<_$SplashBlocImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
