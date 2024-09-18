import 'package:flutter/material.dart';
import 'package:peta_aplikacija/models/profile_model.dart';

class Profile extends StatelessWidget {
  ProfileModel prof;
  Profile({super.key, required this.prof});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          color: Color.fromARGB(255, 254, 214, 214),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  prof.picture,
                ),
                Text(
                  prof.name,
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 68, 68, 68),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
