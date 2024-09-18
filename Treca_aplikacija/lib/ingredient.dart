import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:treca_aplikacija/models/ingredient_model.dart';

class Ingredient extends StatelessWidget {
  IngredientModel ing;
  Ingredient({super.key, required this.ing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
        width: 93,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(17)),
          color: Color.fromARGB(255, 80, 171, 250),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Image.asset(
                  height: 25,
                  width: 25,
                  ing.imageI,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                textAlign: TextAlign.left,
                ing.name,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Text(
                textAlign: TextAlign.left,
                ing.number,
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
