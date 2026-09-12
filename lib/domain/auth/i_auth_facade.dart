import 'package:dartz/dartz.dart';
import 'package:notes_ddd/domain/auth/auth_failure.dart';
import 'package:notes_ddd/domain/auth/user.dart';
import 'package:notes_ddd/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Option<User> getSignedInUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailandPassword({
    required EmailAddress email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailandPassword({
    required EmailAddress email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}
