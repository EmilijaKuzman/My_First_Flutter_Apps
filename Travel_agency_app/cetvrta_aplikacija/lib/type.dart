import 'package:cetvrta_aplikacija/models/type_model.dart';
import 'package:flutter/material.dart';

class Type extends StatelessWidget {
  TypeModel type;
  bool select;
  VoidCallback onTap;
  Type(
      {super.key,
      required this.type,
      required this.select,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: Color.fromARGB(255, 243, 248, 254),
          ),
          width: 100,
          height: 52,
          child: Center(
            child: Text(
              type.name,
              style: TextStyle(
                fontSize: 16,
                color: select
                    ? Color.fromARGB(255, 23, 111, 242)
                    : Color.fromARGB(255, 184, 184, 184),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
