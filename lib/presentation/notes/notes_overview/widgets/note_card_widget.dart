import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:notes_ddd/application/notes/note_actor/note_actor_bloc.dart';
import 'package:notes_ddd/domain/notes/note.dart';
import 'package:notes_ddd/presentation/notes/note_form/note_form_page.dart';
import 'package:notes_ddd/presentation/notes/notes_overview/widgets/todo_display.dart';
import 'package:notes_ddd/presentation/routes/app_router.dart';

class NoteCardWidget extends StatelessWidget {
  const NoteCardWidget({super.key, required this.note});

  final Note note;

  void _showDeletionDialog(BuildContext context, NoteActorBloc noteActorBloc) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Selected note:'),
          content: Text(
            note.body.getOrCrash(),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('CANCEL'),
            ),
            TextButton(
              onPressed: () {
                noteActorBloc.add(NoteActorEvent.deleted(note));
                Navigator.of(context).pop();
              },
              child: const Text('DELETE'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: note.colour.getOrCrash(),
      child: InkWell(
        onTap: () {
          context.router.push(NoteFormRoute(editedNotes: note,));
        },
        onLongPress: () {
          final noteActorBloc = context.read<NoteActorBloc>();
          _showDeletionDialog(context, noteActorBloc);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(note.body.getOrCrash(), style: TextStyle(fontSize: 14)),
              if (note.todos.length > 0) const SizedBox(height: 6),
              Wrap(
                spacing: 8,
                children: [
                  ...note.todos
                      .getOrCrash()
                      .map((todo) => TodoDisplay(todo: todo))
                      .iter,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
