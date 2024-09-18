import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deseta/models/task_model.dart';

class TaskRepository {
  final db = FirebaseFirestore.instance;
  Future<List<TaskModel>> getTasks() async {
    final p = await db.collection("tasks").get();
    return p.docs
        .map((e) => TaskModel.fromMap({...e.data(), "id": e.id}))
        .toList();
  }

  Future<String> addTaks(TaskModel taskM) async {
    final s = await db.collection("tasks").add(taskM.toMap());
    return s.id;
  }

  Future<void> removeTask(String id) async {
    await db.collection("tasks").doc(id).delete();
    //tasksList.removeWhere((element) => element.id == id);
  }

  void checkTask(TaskModel task) {
    /* tasksList = tasksList
        .map((element) => element.id == task.id ? task : element)
        .toList();*/
    // element.id == task.id ? element.copyWith(done: task.done) : element);
  }

  Future<void> checkkTask(String id, bool sett) async {
    await db
        .collection("tasks")
        .doc(id)
        .set({"done": sett}, SetOptions(merge: true));
    /* tasksList = tasksList
        .map((element) =>
            element.id == id ? element.copyWith(done: !element.done) : element)
        .toList();*/
    // element.id == task.id ? element.copyWith(done: task.done) : element);
  }

  Future<void> updateTask(TaskModel taskU) async {
    await db
        .collection("tasks")
        .doc(taskU.id)
        .set(taskU.toMap(), SetOptions(merge: true));
    //tasksList = tasksList.map((e) => e.id == taskU.id ? taskU : e).toList();
  }
}
