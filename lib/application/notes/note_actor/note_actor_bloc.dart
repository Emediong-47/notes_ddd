import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_ddd/domain/notes/i_note_repository.dart';
import 'package:notes_ddd/domain/notes/note.dart';
import 'package:notes_ddd/domain/notes/note_failure.dart';

part 'note_actor_event.dart';
part 'note_actor_state.dart';

part 'note_actor_bloc.freezed.dart';

@injectable
class NoteActorBloc extends Bloc<NoteActorEvent, NoteActorState> {
  final INoteRepository _noteRepository;
  NoteActorBloc({required this._noteRepository})
    : super(NoteActorState.initial()) {
    on<_Deleted>((event, emit) async {
      emit(const NoteActorState.deleteInProgress());
      final possibleFailure = await _noteRepository.delete(event.note);
      emit(
        possibleFailure.fold(
          (failure) => NoteActorState.deleteFailure(failure),
          (_) => const NoteActorState.deleteSuccess(),
        ),
      );
    });
  }
}
