import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'data/sources/auth/contrat/api_source.dart';
import 'data/sources/auth/weather_api_source.dart';
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

}
