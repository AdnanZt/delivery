// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherDtoTearOff {
  const _$WeatherDtoTearOff();

  _WeatherDto call(
      {required String date,
      required String weather,
      required String description,
      required double temperature,
      required String icon}) {
    return _WeatherDto(
      date: date,
      weather: weather,
      description: description,
      temperature: temperature,
      icon: icon,
    );
  }
}

/// @nodoc
const $WeatherDto = _$WeatherDtoTearOff();

/// @nodoc
mixin _$WeatherDto {
  String get date => throw _privateConstructorUsedError;
  String get weather => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherDtoCopyWith<WeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDtoCopyWith<$Res> {
  factory $WeatherDtoCopyWith(
          WeatherDto value, $Res Function(WeatherDto) then) =
      _$WeatherDtoCopyWithImpl<$Res>;
  $Res call(
      {String date,
      String weather,
      String description,
      double temperature,
      String icon});
}

/// @nodoc
class _$WeatherDtoCopyWithImpl<$Res> implements $WeatherDtoCopyWith<$Res> {
  _$WeatherDtoCopyWithImpl(this._value, this._then);

  final WeatherDto _value;
  // ignore: unused_field
  final $Res Function(WeatherDto) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? weather = freezed,
    Object? description = freezed,
    Object? temperature = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WeatherDtoCopyWith<$Res> implements $WeatherDtoCopyWith<$Res> {
  factory _$WeatherDtoCopyWith(
          _WeatherDto value, $Res Function(_WeatherDto) then) =
      __$WeatherDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String date,
      String weather,
      String description,
      double temperature,
      String icon});
}

/// @nodoc
class __$WeatherDtoCopyWithImpl<$Res> extends _$WeatherDtoCopyWithImpl<$Res>
    implements _$WeatherDtoCopyWith<$Res> {
  __$WeatherDtoCopyWithImpl(
      _WeatherDto _value, $Res Function(_WeatherDto) _then)
      : super(_value, (v) => _then(v as _WeatherDto));

  @override
  _WeatherDto get _value => super._value as _WeatherDto;

  @override
  $Res call({
    Object? date = freezed,
    Object? weather = freezed,
    Object? description = freezed,
    Object? temperature = freezed,
    Object? icon = freezed,
  }) {
    return _then(_WeatherDto(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeatherDto implements _WeatherDto {
  const _$_WeatherDto(
      {required this.date,
      required this.weather,
      required this.description,
      required this.temperature,
      required this.icon});

  @override
  final String date;
  @override
  final String weather;
  @override
  final String description;
  @override
  final double temperature;
  @override
  final String icon;

  @override
  String toString() {
    return 'WeatherDto(date: $date, weather: $weather, description: $description, temperature: $temperature, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherDto &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality()
                    .equals(other.weather, weather)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.temperature, temperature) ||
                const DeepCollectionEquality()
                    .equals(other.temperature, temperature)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(weather) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(temperature) ^
      const DeepCollectionEquality().hash(icon);

  @JsonKey(ignore: true)
  @override
  _$WeatherDtoCopyWith<_WeatherDto> get copyWith =>
      __$WeatherDtoCopyWithImpl<_WeatherDto>(this, _$identity);
}

abstract class _WeatherDto implements WeatherDto {
  const factory _WeatherDto(
      {required String date,
      required String weather,
      required String description,
      required double temperature,
      required String icon}) = _$_WeatherDto;

  @override
  String get date => throw _privateConstructorUsedError;
  @override
  String get weather => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  double get temperature => throw _privateConstructorUsedError;
  @override
  String get icon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherDtoCopyWith<_WeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}
