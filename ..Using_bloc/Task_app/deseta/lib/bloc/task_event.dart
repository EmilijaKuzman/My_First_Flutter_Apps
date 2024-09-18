// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'task_bloc.dart';

@immutable
sealed class TaskEvent {}

class AddTaskEvent extends TaskEvent {
  final TaskModel addedTask;
  AddTaskEvent({
    required this.addedTask,
  });
}

class CheckEvent extends TaskEvent {
  final String id;
  CheckEvent({
    required this.id,
  });
}

class DeleteEvent extends TaskEvent {
  final String id;
  DeleteEvent({
    required this.id,
  });
}

class UpdateEvent extends TaskEvent {
  final TaskModel updateTask;
  UpdateEvent({
    required this.updateTask,
  });
}

class LoadTaskEvent extends TaskEvent {}
