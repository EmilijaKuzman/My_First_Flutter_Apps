import 'package:flutter/material.dart';

class Colorss extends StatelessWidget {
  Color color;
  bool? selected;
  VoidCallback? onTap;
  Colorss({super.key, required this.color, this.selected, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        height: 44,
        width: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(
              width: 2,
              color: selected == true
                  ? color
                  : Color.fromARGB(255, 254, 214, 214)),
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
