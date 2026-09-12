import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:notes_ddd/domain/notes/i_note_repository.dart';
import 'package:notes_ddd/domain/notes/note.dart';
import 'package:notes_ddd/domain/notes/note_failure.dart';

part 'note_watcher_event.dart';
part 'note_watcher_state.dart';
part 'note_watcher_bloc.freezed.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  final INoteRepository _noteRepository;

  NoteWatcherBloc({required this._noteRepository})
    : super(NoteWatcherState.initial()) {
    on<_WatchAllStarted>(_onWatchAllStarted);
    on<_WatchUncompletedStarted>(_onWatchUncompletedStarted);
  }

  Future<void> _onWatchAllStarted(
    _WatchAllStarted event,
    Emitter<NoteWatcherState> emit,
  ) async {
    emit(const NoteWatcherState.loadInProgress());

    await emit.forEach<Either<NoteFailure, KtList<Note>>>(
      _noteRepository.watchAll(),
      onData: (failureOrNotes) => failureOrNotes.fold(
        (failure) => NoteWatcherState.loadFailure(failure),
        (notes) => NoteWatcherState.loadSuccess(notes),
      ),
    );
  }

  Future<void> _onWatchUncompletedStarted(
    _WatchUncompletedStarted event,
    Emitter<NoteWatcherState> emit,
  ) async {
    emit(const NoteWatcherState.loadInProgress());

    await emit.forEach<Either<NoteFailure, KtList<Note>>>(
      _noteRepository.watchUncompleted(),
      onData: (failureOrNotes) => failureOrNotes.fold(
            (failure) => NoteWatcherState.loadFailure(failure),
            (notes) => NoteWatcherState.loadSuccess(notes),
      ),
    );
  }
}
