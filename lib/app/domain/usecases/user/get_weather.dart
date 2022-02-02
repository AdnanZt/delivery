import 'package:dartz/dartz.dart';
import 'package:delivery/app/domain/entities/weather.dart';

import '../../../../../core/failure.dart';
import '../../repositories/user_repository.dart';
import '../usecase.dart';

class GetWeather implements UseCase<Future<Either<Failure, List<Weather>>>, void> {
  GetWeather({
    required UserRepository userRepository,
  }) : _userRepository = userRepository;

  final UserRepository _userRepository;

  @override
  Future<Either<Failure, List<Weather>>> call([void params]) async {
    final result = await _userRepository.getWeather();
    return result;
  }
}
