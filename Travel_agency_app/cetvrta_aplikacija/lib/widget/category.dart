import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String name;
  bool check;
  VoidCallback onClick;
  Category(
      {super.key,
      required this.name,
      required this.check,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        child: Text(
          name,
          style: TextStyle(
            color: check
                ? Color.fromARGB(255, 23, 111, 242)
                : Color.fromARGB(255, 196, 207, 219),
          ),
        ),
      ),
    );
  }
}
