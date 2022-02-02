import 'package:dartz/dartz.dart';
import '../../../core/failure.dart';

import 'usecase.dart';

class ValidateEmail implements UseCase<Either<Failure, Unit>, String> {
  @override
  Either<Failure, Unit> call(String? email) {
    if (email == null || email.isEmpty) {
      return Left(Failure(title: 'Please enter a correct mail'));
    }

    final regex = RegExp(r"[a-z0-9\._-]+@[a-z0-9\._-]+\.[a-z]+");
    return regex.hasMatch(email) ? const Right(unit) : Left(Failure(title: 'Please enter a correct mail'));
  }
}
