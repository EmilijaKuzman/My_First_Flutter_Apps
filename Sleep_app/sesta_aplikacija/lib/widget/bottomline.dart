import 'package:flutter/material.dart';

class BottomLine extends StatelessWidget {
  const BottomLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 5,
      width: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/bottomline.png"), fit: BoxFit.cover),
      ),
    );
  }
}
