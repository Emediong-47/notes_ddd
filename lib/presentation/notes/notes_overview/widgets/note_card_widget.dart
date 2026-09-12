import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:notes_ddd/domain/notes/note.dart';
import 'package:notes_ddd/presentation/notes/notes_overview/widgets/todo_display.dart';

class NoteCardWidget extends StatelessWidget {
  const NoteCardWidget({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(note.body.getOrCrash()),
          if (note.todos.length > 0) const SizedBox(height: 6),
          Wrap(
            children: [
              ...note.todos
                  .getOrCrash()
                  .map((todo) => Container(child: TodoDisplay(todo: todo,)))
                  .iter,
            ],
          ),
        ],
      ),
    );
  }
}
