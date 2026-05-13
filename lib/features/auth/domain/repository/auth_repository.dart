import 'package:blog_app/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<Failures, String>> signup({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Failures, String>> signin({
    required String email,
    required String password,
  });
}
