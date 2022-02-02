import 'dart:async';

import 'package:delivery/app/data/dtos/weather_dto.dart';

abstract class ApiSource {
  Future<List<WeatherDto>> getWeather();
}
