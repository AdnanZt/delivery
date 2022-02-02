// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$WeatherViewModel on _WeatherViewModel, Store {
  Computed<bool>? _$isStatePendingComputed;

  @override
  bool get isStatePending =>
      (_$isStatePendingComputed ??= Computed<bool>(() => super.isStatePending,
              name: '_WeatherViewModel.isStatePending'))
          .value;

  final _$weatherStateAtom = Atom(name: '_WeatherViewModel.weatherState');

  @override
  DataState<List<Weather>> get weatherState {
    _$weatherStateAtom.reportRead();
    return super.weatherState;
  }

  @override
  set weatherState(DataState<List<Weather>> value) {
    _$weatherStateAtom.reportWrite(value, super.weatherState, () {
      super.weatherState = value;
    });
  }

  final _$onGetWeatherAsyncAction =
      AsyncAction('_WeatherViewModel.onGetWeather');

  @override
  Future<void> onGetWeather() {
    return _$onGetWeatherAsyncAction.run(() => super.onGetWeather());
  }

  @override
  String toString() {
    return '''
weatherState: ${weatherState},
isStatePending: ${isStatePending}
    ''';
  }
}
