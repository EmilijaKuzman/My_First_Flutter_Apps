// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'task_bloc.dart';

enum Status { initial, load, loaded, error }

@immutable
class TaskState {
  final List<TaskModel> listTask;
  final Status status;
  final String? error;
  final String? editingTaskId;
  const TaskState({
    this.listTask = const [],
    required this.status,
    this.error,
    this.editingTaskId,
  });

  TaskState copyWith({
    List<TaskModel>? listTask,
    Status? status,
    String? error,
    String? editingTaskId,
  }) {
    return TaskState(
      listTask: listTask ?? this.listTask,
      status: status ?? this.status,
      error: error ?? this.error,
      editingTaskId: editingTaskId,
    );
  }
}
