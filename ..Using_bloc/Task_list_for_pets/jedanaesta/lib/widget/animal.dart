import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jedanaesta/bloc/animal_bloc.dart';
import 'package:jedanaesta/models/animal_model.dart';

class Animal extends StatelessWidget {
  AnimalModel animal;
  VoidCallback selected;
  Animal({super.key, required this.animal, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 149, 217, 248)),
      height: 100,
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70,
            width: 65,
            margin: EdgeInsets.all(10),
            child: Image.network(
              animal.image,
              height: 70,
              width: 65,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  animal.name,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  animal.desc,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  context.read<AnimalBloc>().add(DeleteEvent(id: animal.id));
                },
                child: Container(
                  margin: EdgeInsets.all(5),
                  child: Text(
                    "x",
                    style: TextStyle(
                      color: Color.fromARGB(255, 52, 7, 255),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Checkbox(
                  value: animal.done,
                  onChanged: (e) {
                    selected();
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
