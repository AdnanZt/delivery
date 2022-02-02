import 'package:delivery/app/data/dtos/weather_dto.dart';
import 'package:delivery/app/data/mapper.dart/contrat/weather_dto_mapper.dart';
import 'package:delivery/app/domain/entities/weather.dart';

class WeatherDtoMapperImpl implements WeatherDtoMapper {
  @override
  Weather toDomain(WeatherDto dto) {
    return Weather(
      date: dto.date,
      description: dto.description,
      temperature: dto.temperature,
      weather: dto.weather,
      icon: dto.icon,
    );
  }
}
