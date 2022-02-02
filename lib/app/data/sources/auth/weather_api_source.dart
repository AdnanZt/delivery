import 'dart:async';

import 'package:delivery/app/data/dtos/weather_dto.dart';
import 'package:dio/dio.dart';

import 'contrat/api_source.dart';

class WeatherAPISource implements ApiSource {
  WeatherAPISource({
    required Dio client,
  }) : _client = client;

  final Dio _client;

  final apiKey = 'f6a3269279022b93429e32322e14be27';

  @override
  Future<List<WeatherDto>> getWeather() async {
    try {
      final result = await _client.get<void>(
        'http://api.openweathermap.org/data/2.5/forecast?q=Paris&appid=$apiKey',
      );

      final data = getResponseData<Map<String, dynamic>>(result);

      final list = (data['list'] as List).map((e) => e as Map<String, dynamic>).toList();

      return list.map((db) => WeatherDto.fromDataBase(db)).toList();
    } catch (e) {
      rethrow;
    }
  }

  T getResponseData<T>(Response response) {
    return response.data as T;
  }
}
