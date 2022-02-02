import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_dto.freezed.dart';

@freezed
class WeatherDto with _$WeatherDto {
  const factory WeatherDto({
    required String date,
    required String weather,
    required String description,
    required double temperature,
    required String icon,
  }) = _WeatherDto;

  factory WeatherDto.fromDataBase(Map<String, dynamic> db) {
    return WeatherDto(
      date: db['dt_txt'],
      weather: db['weather'][0]['main'],
      description: db['weather'][0]['description'],
      temperature: db['main']['temp'],
      icon: db['weather'][0]['icon'],
    );
  }
}
