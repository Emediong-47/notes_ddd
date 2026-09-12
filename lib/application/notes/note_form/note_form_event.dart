part of 'note_form_bloc.dart';

@freezed
sealed class NoteFormEvent with _$NoteFormEvent{
  const factory NoteFormEvent.initialized(Option<Note> initialNoteOption) = _Initialized;
  const factory NoteFormEvent.bodyChanged(String bodyStr) = _BodyChanged;
  const factory NoteFormEvent.colourChanged(Color colour) = _ColourChanged;
  const factory NoteFormEvent.todosChanged(KtList<TodoItemPrimitive> todos) = _TodosChanged;
  const factory NoteFormEvent.saved() = _Saved;
}
