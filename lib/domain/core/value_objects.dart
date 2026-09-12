import 'package:dartz/dartz.dart';
import 'package:notes_ddd/domain/core/errors.dart';
import 'package:notes_ddd/domain/auth/value_objects.dart';
import 'package:notes_ddd/domain/core/failures.dart';
import 'package:uuid/uuid.dart';

abstract class ValueObjects<T> {
  const ValueObjects();

  Either<ValueFailure<T>, T> get value;
  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Password &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'Value{$value}';
  }
}

class UniqueId extends ValueObjects<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  const UniqueId._(this.value);

  factory UniqueId() {
    return UniqueId._(right(Uuid().v4()));
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(right(uniqueId));
  }
}
