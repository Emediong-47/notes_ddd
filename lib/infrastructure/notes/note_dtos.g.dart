// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NoteDto _$NoteDtoFromJson(Map<String, dynamic> json) => _NoteDto(
  body: json['body'] as String,
  colour: (json['colour'] as num).toInt(),
  todos: (json['todos'] as List<dynamic>)
      .map(
        (e) => TodoItemDto.fromJson(
          (e as Map<String, dynamic>).map((k, e) => MapEntry(k, e as Object)),
        ),
      )
      .toList(),
  serverTimeStamp: const ServerTimestampConverter().fromJson(
    json['serverTimeStamp'] as Object,
  ),
);

Map<String, dynamic> _$NoteDtoToJson(_NoteDto instance) => <String, dynamic>{
  'body': instance.body,
  'colour': instance.colour,
  'todos': instance.todos,
  'serverTimeStamp': const ServerTimestampConverter().toJson(
    instance.serverTimeStamp,
  ),
};

_TodoItemDto _$TodoItemDtoFromJson(Map<String, dynamic> json) => _TodoItemDto(
  id: json['id'] as String,
  name: json['name'] as String,
  isDone: json['isDone'] as bool,
);

Map<String, dynamic> _$TodoItemDtoToJson(_TodoItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isDone': instance.isDone,
    };
