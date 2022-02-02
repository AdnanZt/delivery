import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'data/mapper.dart/contrat/weather_dto_mapper.dart';
import 'data/mapper.dart/impls/weather_dto_mapper_impl.dart';
import 'data/repositories/user_repository_impl.dart';
import 'data/sources/auth/contrat/api_source.dart';
import 'data/sources/auth/weather_api_source.dart';
import 'domain/repositories/user_repository.dart';
import 'domain/usecases/user/get_weather.dart';
import 'domain/usecases/validate_credential.dart';
import 'domain/usecases/validate_email.dart';
import 'domain/usecases/validate_password.dart';
final sl = GetIt.instance;

void init() {
  // ---------------------------------------------------------------------------
  // SOURCES
  // ---------------------------------------------------------------------------

  sl.registerLazySingleton<ApiSource>(
    () => WeatherAPISource(
      client: Dio(),
    ),
  );

  // ---------------------------------------------------------------------------
  // DTO MAPPERS
  // ---------------------------------------------------------------------------

  sl.registerLazySingleton<WeatherDtoMapper>(
    () => WeatherDtoMapperImpl(),
  );

  // ---------------------------------------------------------------------------
  // REPOSITORIES
  // ---------------------------------------------------------------------------
  sl.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(
      apiSource: sl<ApiSource>(),
      weatherDtoMapper: sl<WeatherDtoMapper>(),
    ),
  );
  // ---------------------------------------------------------------------------
  // USE CASES
  // ---------------------------------------------------------------------------

  sl.registerLazySingleton<GetWeather>(
    () => GetWeather(
      userRepository: sl<UserRepository>(),
    ),
  );

  sl.registerLazySingleton<ValidateEmail>(
    () => ValidateEmail(),
  );

  sl.registerLazySingleton<ValidatePassword>(
    () => ValidatePassword(),
  );

  sl.registerLazySingleton<ValidateCredential>(
    () => ValidateCredential(),
  );

}
