import 'package:cetvrta_aplikacija/models/facilities_model.dart';
import 'package:flutter/material.dart';

class Facilities extends StatelessWidget {
  FacilitiesModel fac;
  Facilities({super.key, required this.fac});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Color.fromARGB(255, 178, 209, 246),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              height: 25,
              width: 25,
              fac.iconF,
              fit: BoxFit.cover,
            ),
            Text(
              fac.desc,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 31, 41, 118),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
