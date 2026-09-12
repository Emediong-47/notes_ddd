import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:notes_ddd/domain/notes/i_note_repository.dart';
import 'package:notes_ddd/domain/notes/note.dart';
import 'package:notes_ddd/domain/notes/note_failure.dart';
import 'package:notes_ddd/domain/notes/value_objects.dart';
import 'package:notes_ddd/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';

part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteRepository _noteRepository;

  NoteFormBloc({required this._noteRepository})
    : super(NoteFormState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_BodyChanged>(_onBodyChanged);
    on<_ColourChanged>(_onColourChanged);
    on<_TodosChanged>(_onTodosChanged);
    on<_Saved>(_onSaved);
  }

  FutureOr<void> _onInitialized(
    _Initialized event,
    Emitter<NoteFormState> emit,
  ) {
    emit(
      event.initialNoteOption.fold(
        () => state,
        (initialNote) => state.copyWith(note: initialNote, isEditing: true),
      ),
    );
  }

  FutureOr<void> _onBodyChanged(
    _BodyChanged event,
    Emitter<NoteFormState> emit,
  ) {
    emit(
      state.copyWith(
        note: state.note.copyWith(body: NoteBody(event.bodyStr)),
        saveFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onColourChanged(
    _ColourChanged event,
    Emitter<NoteFormState> emit,
  ) {
    emit(
      state.copyWith(
        note: state.note.copyWith(colour: NoteColour(event.colour)),
        saveFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onTodosChanged(
    _TodosChanged event,
    Emitter<NoteFormState> emit,
  ) {
    emit(
      state.copyWith(
        note: state.note.copyWith(
          todos: List3(event.todos.map((primitive) => primitive.toDomain())),
        ),
        saveFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onSaved(_Saved event, Emitter<NoteFormState> emit) async {
    late final Either<NoteFailure, Unit> failureOrSuccess;

    emit(state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
    if (state.note.failureOption.isNone()) {
      failureOrSuccess = state.isEditing
          ? await _noteRepository.update(state.note)
          : await _noteRepository.create(state.note);
    }
    emit(
      state.copyWith(
        isSaving: false,
        showErrorMessages: true,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
