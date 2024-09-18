import 'package:flutter/material.dart';
import 'package:sesta_aplikacija/models/story_type_model.dart';

class StoryType extends StatelessWidget {
  StoryTypeModel stype;
  bool select;
  VoidCallback onTap;
  StoryType(
      {super.key,
      required this.stype,
      required this.select,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: select
                      ? Color.fromARGB(255, 142, 151, 253)
                      : Color.fromARGB(255, 88, 104, 148),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      height: 30,
                      width: 30,
                      stype.img,
                      color: select
                          ? Color.fromARGB(255, 125, 92, 241)
                          : const Color.fromARGB(255, 255, 236, 204),
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              child: Text(
                stype.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: select
                      ? Color.fromARGB(255, 125, 92, 241)
                      : const Color.fromARGB(255, 255, 236, 204),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
