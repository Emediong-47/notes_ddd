import 'package:flutter/material.dart';
import 'package:notes_ddd/domain/notes/note.dart';

class ErrorNoteCard extends StatelessWidget {
  const ErrorNoteCard({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.error,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Invalid note, please contact support',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              'Details for nerd:',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: Colors.white),
            ),
            Text(
              note.failureOption.fold(() => '', (a) => a.toString()),
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
