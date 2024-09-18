import 'package:deseta/bloc/task_bloc.dart';
import 'package:deseta/models/task_model.dart';
import 'package:deseta/widget/poptext.dart';
import 'package:deseta/widget/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<TaskBloc>().add(LoadTaskEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Text("+"),
        onPressed: () {
          showDialog<void>(
            context: context,
            barrierDismissible: false, // user must tap button!
            builder: (BuildContext context) {
              return PopText(
                  nam: "Add task",
                  ok: (text, date) {
                    context.read<TaskBloc>().add(AddTaskEvent(
                        addedTask: TaskModel(
                            id: "", text: text, date: date, done: false)));
                  });
            },
          );
        },
      ),
      body: SafeArea(
        child: Container(
          child: BlocBuilder<TaskBloc, TaskState>(
            builder: (context, state) {
              if (state.status == Status.error)
                return Text(state.error ?? 'error');
              else {
                return SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      ...state.listTask.map(
                        (e) => Task(
                          task: e,
                          check: () {
                            context.read<TaskBloc>().add(CheckEvent(id: e.id));
                          },
                          del: () {
                            context.read<TaskBloc>().add(DeleteEvent(id: e.id));
                          },
                          add: () {
                            showDialog<void>(
                              context: context,
                              barrierDismissible:
                                  false, // user must tap button!
                              builder: (BuildContext context) {
                                return PopText(
                                    nam: "Change task",
                                    ok: (text, date) {
                                      context.read<TaskBloc>().add(UpdateEvent(
                                          updateTask: e.copyWith(
                                              date: date, text: text)));
                                      //  addedTask:
                                      //    TaskModel(id: 0, text: text, date: date, done: false)));
                                    });
                              },
                            );
                          },
                          editing: state.editingTaskId == e.id,
                        ),
                      ),
                      /*Task(
                      task: TaskModel(
                          id: 1, text: "text", date: "date", done: true),
                    ),*/
                      if (state.status == Status.load)
                        Center(child: CircularProgressIndicator()),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
