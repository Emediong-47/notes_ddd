import 'package:dartz/dartz.dart';
import 'package:notes_ddd/domain/core/value_objects.dart';
import 'package:notes_ddd/domain/core/value_validators.dart';
import 'package:notes_ddd/domain/core/failures.dart';


class EmailAddress extends ValueObjects {
  const EmailAddress._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }
}

class Password extends ValueObjects {
  const Password._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }
}