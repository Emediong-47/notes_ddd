import 'package:flutter/material.dart';
import 'package:notes_ddd/domain/notes/note_failure.dart';

class CriticalFailureDisplay extends StatelessWidget {
  const CriticalFailureDisplay({super.key, required this.failure});

  final NoteFailure failure;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('😱', style: TextStyle(fontSize: 150)),
          Text(
            failure.maybeMap(
              orElse: () => "Unexpected error. \nPlease contact support",
              insufficientPermission: (_) => 'Insufficient Permissions',
            ),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () {
              //TODO: Implement Email service
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.mail),
                SizedBox(width: 4),
                Text('I NEED HELP'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
