import 'package:flutter/material.dart';
import 'package:treca_aplikacija/models/food_model.dart';

class Food extends StatelessWidget {
  FoodModel food;
  bool select;
  VoidCallback onTap;
  Food(
      {super.key,
      required this.food,
      required this.select,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(5),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: select
              ? Color.fromARGB(255, 255, 0, 0)
              : Color.fromARGB(255, 162, 249, 162),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Image.asset(
                height: 25,
                width: 25,
                food.imageF,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
