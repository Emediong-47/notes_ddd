part of 'note_actor_bloc.dart';

@freezed
sealed class NoteActorEvent with _$NoteActorEvent{
  const factory NoteActorEvent.deleted(Note note) = _Deleted;
}
