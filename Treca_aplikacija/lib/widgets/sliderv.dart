import 'package:flutter/material.dart';
import 'package:treca_aplikacija/models/day_model.dart';

class Sliderv extends StatelessWidget {
  DayModel dayM;
  Sliderv({super.key, required this.dayM});

  @override
  Widget build(BuildContext context) {
    double sizeS = 150;
    return Column(
      children: [
        Stack(
          children: [
            Align(
              alignment: const Alignment(0, 0.7),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(45),
                    ),
                    color: Color.fromARGB(255, 119, 7, 255)),
                width: 7,
                height: sizeS,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Align(
                alignment: const Alignment(0, 0.5),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(45),
                    ),
                    color: const Color.fromARGB(255, 255, 7, 7),
                  ),
                  width: 7,
                  height: sizeS * dayM.num,
                ),
              ),
            ),
          ],
        ),
        Text(
          dayM.dayn,
          style: const TextStyle(
            height: 2,
            fontSize: 20,
            color: Color.fromARGB(255, 31, 41, 118),
          ),
        ),
      ],
    );
  }
}
