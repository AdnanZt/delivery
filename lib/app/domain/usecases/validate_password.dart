import 'package:dartz/dartz.dart';
import 'package:delivery/core/failure.dart';

import 'usecase.dart';

class ValidatePassword implements UseCase<Either<Failure, Unit>, String> {
  @override
  Either<Failure, Unit> call(String? password) {
    if (password == null || password.isEmpty) {
      return Left(Failure(title: 'Please enter a correct password'));
    }

    final regex = RegExp(r"(?=.{10,})(?=\S*?[A-Z])(?=\S*?[a-z])((?=\S*?[0-9])|(?=\S*?[^\w*]))\S{10,}");

    return regex.hasMatch(password) ? const Right(unit) : Left(Failure(title: 'Please enter a correct password'));
  }
}
