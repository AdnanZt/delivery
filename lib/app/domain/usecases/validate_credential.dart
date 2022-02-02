import 'package:dartz/dartz.dart';
import '../../../core/failure.dart';

import 'usecase.dart';

class CredentialParams {
  final String mail;
  final String password;

  CredentialParams(this.mail, this.password);
}

class ValidateCredential implements UseCase<Either<Failure, String>, CredentialParams> {
  @override
  Either<Failure, String> call(CredentialParams params) {
    if (params.password == 'Azerty75000' && params.mail == 'test@gmail.com') {
      String name = 'Adnan';
      return Right(name);
    }
    return Left(Failure(title: "This account don't exist"));
  }
}
