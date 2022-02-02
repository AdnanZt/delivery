import 'package:delivery/app/domain/entities/weather.dart';
import 'package:mobx/mobx.dart';

import '../../domain/entities/data_state.dart';
import '../../domain/usecases/user/get_weather.dart';

part 'weather_view_model.g.dart';

class WeatherViewModel = _WeatherViewModel with _$WeatherViewModel;

abstract class _WeatherViewModel with Store {
  _WeatherViewModel({
    required GetWeather getWeather,
  }) : _getWeather = getWeather;

  // USE CASES
  final GetWeather _getWeather;

  //----------------------------------------------------------------------------
  // OBSERVABLE PROPERTIES AND GETTERS
  //----------------------------------------------------------------------------

  @observable
  DataState<List<Weather>> weatherState = const DataState.initial();

  @computed
  bool get isStatePending => weatherState.maybeWhen(
        pending: (_) => true,
        orElse: () => false,
      );

  @action
  Future<void> onGetWeather() async {
    weatherState = const DataState.pending();

    final result = await _getWeather();

    result.fold(
      (failure) => weatherState = DataState.failure(failure),
      (data) => weatherState = DataState.complete(data),
    );
  }
}
