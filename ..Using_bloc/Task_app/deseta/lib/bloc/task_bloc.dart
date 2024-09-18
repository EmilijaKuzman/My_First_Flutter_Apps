import 'package:bloc/bloc.dart';
import 'package:deseta/models/task_model.dart';
import 'package:deseta/taskrepository.dart';
import 'package:meta/meta.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskRepository repo;

  TaskBloc({required this.repo}) : super(TaskState(status: Status.initial)) {
    on<LoadTaskEvent>((event, emit) async {
      // TODO: implement event handler
      print("hhh");
      try {
        emit(state.copyWith(status: Status.load));
        final list = [...await repo.getTasks()];
        emit(state.copyWith(status: Status.loaded, listTask: list));
      } catch (e) {
        emit(state.copyWith(status: Status.error, error: e.toString()));
      }
    });

    on<AddTaskEvent>((event, emit) async {
      // TODO: implement event handler
      try {
        emit(state.copyWith(status: Status.load));
        String id = await repo.addTaks(event.addedTask);
        emit(state.copyWith(
            status: Status.loaded,
            listTask: [...state.listTask, event.addedTask.copyWith(id: id)]));
      } catch (e) {
        emit(state.copyWith(status: Status.error, error: e.toString()));
      }
    });
    on<CheckEvent>((event, emit) async {
      // TODO: implement event handler
      //emit();
      /*final p = state.listTask.where((element) => element.id == event.id).first;
      final p1 = p.copyWith(done: !p.done);

      final newlist = [...state.listTask];
      int i = newlist.indexWhere(
        (element) => element.id == event.id,
      );
      newlist[i] = p1;

      final new1 = state.listTask
          .map(
            (e) => e.id == event.id ? e.copyWith(done: !e.done) : e,
          )
          .toList();*/
      try {
        final d =
            state.listTask.firstWhere((element) => element.id == event.id);
        repo.checkkTask(event.id, !d.done);
        emit(state.copyWith(
            listTask: state.listTask
                .map(
                  (e) => e.id == event.id ? e.copyWith(done: !e.done) : e,
                )
                .toList()));
      } catch (e) {
        emit(state.copyWith(status: Status.error, error: e.toString()));
      }
    });
    on<DeleteEvent>((event, emit) async {
      final l = [...state.listTask];
      try {
        await repo.removeTask(event.id);
        l.removeWhere((element) => element.id == event.id);
        emit(state.copyWith(listTask: l));
      } catch (e) {
        emit(state.copyWith(error: e.toString(), status: Status.error));
      }
    });

    on<UpdateEvent>((event, emit) async {
      // TODO: implement event handler
      try {
        emit(state.copyWith(editingTaskId: event.updateTask.id));
        await Future.delayed(Duration(seconds: 1));
        repo.updateTask(event.updateTask);
        emit(state.copyWith(
            editingTaskId: null,
            listTask: state.listTask
                .map((e) => e.id == event.updateTask.id ? event.updateTask : e)
                .toList()));
      } catch (e) {
        emit(state.copyWith(status: Status.error, error: e.toString()));
      }
    });
  }
}
