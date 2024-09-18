import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Image.asset(
                        height: 25,
                        width: 25,
                        "assets/Vector.png",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset(
                height: 44,
                width: 44,
                "assets/Ellipse2.png",
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
