import 'package:deseta/models/task_model.dart';
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  TaskModel task;
  VoidCallback check;
  VoidCallback del;
  VoidCallback add;
  bool editing;
  Task(
      {super.key,
      required this.task,
      required this.check,
      required this.del,
      required this.add,
      required this.editing});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 128, 145, 129),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Checkbox(
              value: widget.task.done,
              onChanged: (s) {
                widget.check();
              },
            ),
          ),
          if (widget.editing) Center(child: CircularProgressIndicator()),
          if (!widget.editing)
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.task.text,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 231, 228, 228),
                    ),
                  ),
                  Text(
                    widget.task.date,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 231, 228, 228),
                    ),
                  ),
                ],
              ),
            ),
          Expanded(
            child: InkWell(
              onTap: widget.add,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromARGB(255, 198, 250, 200),
                ),
                height: 40,
                width: 90,
                child: Center(
                  child: Text("Change"),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: widget.del,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromARGB(255, 205, 238, 198)),
              height: 30,
              width: 30,
              margin: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  "X",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 252, 64, 64),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
