import 'package:flutter/foundation.dart';

class EmailAddress {
  const EmailAddress._(this.value);

  final String value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  @override
  String toString() {
    return 'EmailAddress{$value}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailAddress &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}

String validateEmailAddress(String input) {
  final emailRegex = RegExp(
    r"^(?=.{1,254}$)(?=.{1,64}@)[A-Za-z0-9](?:[A-Za-z0-9._%+-]{0,62}[A-Za-z0-9])?@(?:[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?\.)+[A-Za-z]{2,63}$",
  );
  if (emailRegex.hasMatch(input)) {
    return input;
  } else {
    throw InvalidEmailException(failedValue: input);
  }
}

class InvalidEmailException implements Exception {
  const InvalidEmailException({required this.failedValue});

  final String failedValue;
}
