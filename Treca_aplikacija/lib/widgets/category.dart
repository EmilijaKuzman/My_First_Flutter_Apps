import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String name;
  bool checked;
  VoidCallback onClick;
  Category({
    super.key,
    required this.name,
    required this.checked,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        child: Text(
          name,
          style: TextStyle(
              color: checked
                  ? Color.fromARGB(255, 255, 0, 0)
                  : Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
    );
  }
}
