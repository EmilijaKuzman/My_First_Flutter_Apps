import 'package:flutter/material.dart';

class Sizee extends StatelessWidget {
  String size;
  bool? selected;
  VoidCallback? onTap;
  Sizee({super.key, required this.size, this.selected, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              size,
              style: TextStyle(
                fontSize: 18,
                color: selected == true
                    ? Color.fromARGB(255, 255, 0, 0)
                    : Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
