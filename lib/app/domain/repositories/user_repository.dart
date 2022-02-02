import 'package:dartz/dartz.dart';
import 'package:delivery/app/domain/entities/weather.dart';

import '../../../core/failure.dart';

import 'repository.dart';

abstract class UserRepository implements Repository {
  Future<Either<Failure, List<Weather>>> getWeather();
}
