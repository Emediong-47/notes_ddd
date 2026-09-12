part of 'note_actor_bloc.dart';

@freezed
sealed class NoteActorState with _$NoteActorState{
  const factory NoteActorState.initial() = _Initail;
  const factory NoteActorState.deleteInProgress() = _DeleteInProgress;
  const factory NoteActorState.deleteFailure(NoteFailure noteFailure) = _DeleteFailure;
  const factory NoteActorState.deleteSuccess() = _DeleteSuccess;
}