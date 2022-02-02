import 'package:delivery/app/data/dtos/weather_dto.dart';
import 'package:delivery/app/domain/entities/weather.dart';

import 'dto_mapper.dart';

abstract class WeatherDtoMapper implements DtoMapper<Weather, WeatherDto> {
  /// Maps a [WeatherDto] object to a [Weather] object
  @override
  Weather toDomain(WeatherDto dto);
}
