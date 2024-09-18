import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class TaskModel {
  String id;
  String text;
  String date;
  bool done;
  TaskModel({
    required this.id,
    required this.text,
    required this.date,
    required this.done,
  });

  TaskModel copyWith({
    String? id,
    String? text,
    String? date,
    bool? done,
  }) {
    return TaskModel(
      id: id ?? this.id,
      text: text ?? this.text,
      date: date ?? this.date,
      done: done ?? this.done,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'date': date,
      'done': done,
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      id: map['id'] as String,
      text: map['text'] ?? 'ss',
      date: map['date'] ?? "sss",
      done: map['done'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory TaskModel.fromJson(String source) =>
      TaskModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
