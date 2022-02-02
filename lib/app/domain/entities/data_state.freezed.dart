// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DataStateTearOff {
  const _$DataStateTearOff();

  _Initial<T> initial<T>() {
    return _Initial<T>();
  }

  _Pending<T> pending<T>([double? percentage]) {
    return _Pending<T>(
      percentage,
    );
  }

  _Failure<T> failure<T>(Failure failure) {
    return _Failure<T>(
      failure,
    );
  }

  _Complete<T> complete<T>(T data) {
    return _Complete<T>(
      data,
    );
  }
}

/// @nodoc
const $DataState = _$DataStateTearOff();

/// @nodoc
mixin _$DataState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double? percentage) pending,
    required TResult Function(Failure failure) failure,
    required TResult Function(T data) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double? percentage)? pending,
    TResult Function(Failure failure)? failure,
    TResult Function(T data)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double? percentage)? pending,
    TResult Function(Failure failure)? failure,
    TResult Function(T data)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Pending<T> value) pending,
    required TResult Function(_Failure<T> value) failure,
    required TResult Function(_Complete<T> value) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Pending<T> value)? pending,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Complete<T> value)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Pending<T> value)? pending,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Complete<T> value)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<T, $Res> {
  factory $DataStateCopyWith(
          DataState<T> value, $Res Function(DataState<T>) then) =
      _$DataStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$DataStateCopyWithImpl<T, $Res> implements $DataStateCopyWith<T, $Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  final DataState<T> _value;
  // ignore: unused_field
  final $Res Function(DataState<T>) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<T, $Res> {
  factory _$InitialCopyWith(
          _Initial<T> value, $Res Function(_Initial<T>) then) =
      __$InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<T, $Res> extends _$DataStateCopyWithImpl<T, $Res>
    implements _$InitialCopyWith<T, $Res> {
  __$InitialCopyWithImpl(_Initial<T> _value, $Res Function(_Initial<T>) _then)
      : super(_value, (v) => _then(v as _Initial<T>));

  @override
  _Initial<T> get _value => super._value as _Initial<T>;
}

/// @nodoc

class _$_Initial<T> implements _Initial<T> {
  const _$_Initial();

  @override
  String toString() {
    return 'DataState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double? percentage) pending,
    required TResult Function(Failure failure) failure,
    required TResult Function(T data) complete,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double? percentage)? pending,
    TResult Function(Failure failure)? failure,
    TResult Function(T data)? complete,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double? percentage)? pending,
    TResult Function(Failure failure)? failure,
    TResult Function(T data)? complete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Pending<T> value) pending,
    required TResult Function(_Failure<T> value) failure,
    required TResult Function(_Complete<T> value) complete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Pending<T> value)? pending,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Complete<T> value)? complete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Pending<T> value)? pending,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Complete<T> value)? complete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements DataState<T> {
  const factory _Initial() = _$_Initial<T>;
}

/// @nodoc
abstract class _$PendingCopyWith<T, $Res> {
  factory _$PendingCopyWith(
          _Pending<T> value, $Res Function(_Pending<T>) then) =
      __$PendingCopyWithImpl<T, $Res>;
  $Res call({double? percentage});
}

/// @nodoc
class __$PendingCopyWithImpl<T, $Res> extends _$DataStateCopyWithImpl<T, $Res>
    implements _$PendingCopyWith<T, $Res> {
  __$PendingCopyWithImpl(_Pending<T> _value, $Res Function(_Pending<T>) _then)
      : super(_value, (v) => _then(v as _Pending<T>));

  @override
  _Pending<T> get _value => super._value as _Pending<T>;

  @override
  $Res call({
    Object? percentage = freezed,
  }) {
    return _then(_Pending<T>(
      percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Pending<T> implements _Pending<T> {
  const _$_Pending([this.percentage]);

  @override
  final double? percentage;

  @override
  String toString() {
    return 'DataState<$T>.pending(percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pending<T> &&
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality()
                    .equals(other.percentage, percentage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(percentage);

  @JsonKey(ignore: true)
  @override
  _$PendingCopyWith<T, _Pending<T>> get copyWith =>
      __$PendingCopyWithImpl<T, _Pending<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double? percentage) pending,
    required TResult Function(Failure failure) failure,
    required TResult Function(T data) complete,
  }) {
    return pending(percentage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double? percentage)? pending,
    TResult Function(Failure failure)? failure,
    TResult Function(T data)? complete,
  }) {
    return pending?.call(percentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double? percentage)? pending,
    TResult Function(Failure failure)? failure,
    TResult Function(T data)? complete,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(percentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Pending<T> value) pending,
    required TResult Function(_Failure<T> value) failure,
    required TResult Function(_Complete<T> value) complete,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Pending<T> value)? pending,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Complete<T> value)? complete,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Pending<T> value)? pending,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Complete<T> value)? complete,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _Pending<T> implements DataState<T> {
  const factory _Pending([double? percentage]) = _$_Pending<T>;

  double? get percentage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PendingCopyWith<T, _Pending<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<T, $Res> {
  factory _$FailureCopyWith(
          _Failure<T> value, $Res Function(_Failure<T>) then) =
      __$FailureCopyWithImpl<T, $Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$FailureCopyWithImpl<T, $Res> extends _$DataStateCopyWithImpl<T, $Res>
    implements _$FailureCopyWith<T, $Res> {
  __$FailureCopyWithImpl(_Failure<T> _value, $Res Function(_Failure<T>) _then)
      : super(_value, (v) => _then(v as _Failure<T>));

  @override
  _Failure<T> get _value => super._value as _Failure<T>;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failure<T>(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_Failure<T> implements _Failure<T> {
  const _$_Failure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'DataState<$T>.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure<T> &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<T, _Failure<T>> get copyWith =>
      __$FailureCopyWithImpl<T, _Failure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double? percentage) pending,
    required TResult Function(Failure failure) failure,
    required TResult Function(T data) complete,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double? percentage)? pending,
    TResult Function(Failure failure)? failure,
    TResult Function(T data)? complete,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double? percentage)? pending,
    TResult Function(Failure failure)? failure,
    TResult Function(T data)? complete,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Pending<T> value) pending,
    required TResult Function(_Failure<T> value) failure,
    required TResult Function(_Complete<T> value) complete,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Pending<T> value)? pending,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Complete<T> value)? complete,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Pending<T> value)? pending,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Complete<T> value)? complete,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<T> implements DataState<T> {
  const factory _Failure(Failure failure) = _$_Failure<T>;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<T, _Failure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CompleteCopyWith<T, $Res> {
  factory _$CompleteCopyWith(
          _Complete<T> value, $Res Function(_Complete<T>) then) =
      __$CompleteCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$CompleteCopyWithImpl<T, $Res> extends _$DataStateCopyWithImpl<T, $Res>
    implements _$CompleteCopyWith<T, $Res> {
  __$CompleteCopyWithImpl(
      _Complete<T> _value, $Res Function(_Complete<T>) _then)
      : super(_value, (v) => _then(v as _Complete<T>));

  @override
  _Complete<T> get _value => super._value as _Complete<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Complete<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Complete<T> implements _Complete<T> {
  const _$_Complete(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'DataState<$T>.complete(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Complete<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$CompleteCopyWith<T, _Complete<T>> get copyWith =>
      __$CompleteCopyWithImpl<T, _Complete<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double? percentage) pending,
    required TResult Function(Failure failure) failure,
    required TResult Function(T data) complete,
  }) {
    return complete(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double? percentage)? pending,
    TResult Function(Failure failure)? failure,
    TResult Function(T data)? complete,
  }) {
    return complete?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double? percentage)? pending,
    TResult Function(Failure failure)? failure,
    TResult Function(T data)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Pending<T> value) pending,
    required TResult Function(_Failure<T> value) failure,
    required TResult Function(_Complete<T> value) complete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Pending<T> value)? pending,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Complete<T> value)? complete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Pending<T> value)? pending,
    TResult Function(_Failure<T> value)? failure,
    TResult Function(_Complete<T> value)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class _Complete<T> implements DataState<T> {
  const factory _Complete(T data) = _$_Complete<T>;

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CompleteCopyWith<T, _Complete<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
