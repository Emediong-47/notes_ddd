part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent{
  const factory AuthEvent.authCheckRequested() = _AuthCheckRequested;
  const factory AuthEvent.signedOut() = _SignedOut;
}
