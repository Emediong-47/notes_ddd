import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes_ddd/domain/core/value_objects.dart';
import 'package:notes_ddd/domain/notes/todo_item.dart';
import 'package:notes_ddd/domain/notes/value_objects.dart';

part 'todo_item_presentation_classes.freezed.dart';

@freezed
sealed class TodoItemPrimitive with _$TodoItemPrimitive {
  const TodoItemPrimitive._();

  const factory TodoItemPrimitive({
    required UniqueId id,
    required String name,
    required bool isDone,
  }) = _TodoItemPrimitive;

  factory TodoItemPrimitive.empty() =>
      TodoItemPrimitive(id: UniqueId(), name: '', isDone: false);

  factory TodoItemPrimitive.fromDomain(TodoItem todoItem) {
    return TodoItemPrimitive(
      id: todoItem.id,
      name: todoItem.name.getOrCrash(),
      isDone: todoItem.isDone,
    );
  }

  TodoItem toDomain() {
    return TodoItem(id: id, name: TodoName(name), isDone: isDone);
  }
}
