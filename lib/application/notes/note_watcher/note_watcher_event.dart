part of 'note_watcher_bloc.dart';

@freezed
sealed class NoteWatcherEvent with _$NoteWatcherEvent{
  const factory NoteWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory NoteWatcherEvent.watchUncompletedStarted() = _WatchUncompletedStarted;
}
