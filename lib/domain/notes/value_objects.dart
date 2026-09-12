import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:notes_ddd/domain/core/failures.dart';
import 'package:notes_ddd/domain/core/value_objects.dart';
import 'package:notes_ddd/domain/core/value_transformers.dart';
import 'package:notes_ddd/domain/core/value_validators.dart';

class NoteBody extends ValueObjects<String> {
  const NoteBody._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory NoteBody(String input) {
    return NoteBody._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }
}

class TodoName extends ValueObjects<String> {
  const TodoName._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory TodoName(String input) {
    return TodoName._(
      validateMaxStringLength(
        input,
        maxLength,
      ).flatMap(validateStringNotEmpty).flatMap(validateSingleLine),
    );
  }
}

class NoteColour extends ValueObjects<Color> {
  const NoteColour._(this.value);

  @override
  final Either<ValueFailure<Color>, Color> value;

  static const List<Color> predefinedColors = [
    Color(0xFFFFF3B0), // Soft Yellow
    Color(0xFFFFC8DD), // Soft Pink
    Color(0xFFBDE0FE), // Soft Blue
    Color(0xFFCDECCF), // Soft Green
    Color(0xFFE2D4F0), // Soft Purple
    Color(0xFFFFD6A5), // Soft Orange
    Color(0xFFB8F2E6), // Soft Teal
  ];

  factory NoteColour(Color input) {
    return NoteColour._(right(makeColourOpaque(input)));
  }
}

class List3<T> extends ValueObjects<KtList<T>> {
  const List3._(this.value);

  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 3;

  factory List3(KtList<T> input) {
    return List3._(validateMaxTodoLength(input, maxLength));
  }
  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}
