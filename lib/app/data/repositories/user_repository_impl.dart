import 'package:dartz/dartz.dart';
import 'package:delivery/app/data/mapper.dart/contrat/weather_dto_mapper.dart';
import 'package:delivery/app/domain/entities/weather.dart';

import '../../../core/failure.dart';
import '../../domain/repositories/user_repository.dart';
import '../sources/auth/contrat/api_source.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({
    required ApiSource apiSource,
    required WeatherDtoMapper weatherDtoMapper,
  })  : _apiSource = apiSource,
        _weatherDtoMapper = weatherDtoMapper;

  final ApiSource _apiSource;
  final WeatherDtoMapper _weatherDtoMapper;

  // ---------------------------------------------------------------------
  // AUTHENTIFICATION
  // ---------------------------------------------------------------------

  @override
  Future<Either<Failure, List<Weather>>> getWeather() async {
    try {
      final weatherDto = await _apiSource.getWeather();
      return Right(weatherDto.map((dto) => _weatherDtoMapper.toDomain(dto)).toList());
    } catch (e) {
      return Left(Failure(title: 'Get weather failed'));
    }
  }
}
