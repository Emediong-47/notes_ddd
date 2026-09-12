import 'package:flutter/material.dart';
import 'package:notes_ddd/domain/notes/todo_item.dart';

class TodoDisplay extends StatelessWidget {
  const TodoDisplay({super.key, required this.todo});

  final TodoItem todo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (todo.isDone)
          Icon(Icons.check_box,color: Theme.of(context).colorScheme.secondary,),
        if(!todo.isDone)
          Icon(Icons.check_box_outline_blank,color: Theme.of(context).colorScheme.onSurface,),
      ],
    );
  }
}
