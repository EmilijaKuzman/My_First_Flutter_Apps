import 'package:flutter/material.dart';
import 'package:peta_aplikacija/models/type_model.dart';

class Type extends StatelessWidget {
  TypeModel type;
  Type({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Color.fromARGB(255, 223, 220, 220),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              type.text,
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 147, 143, 143),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
