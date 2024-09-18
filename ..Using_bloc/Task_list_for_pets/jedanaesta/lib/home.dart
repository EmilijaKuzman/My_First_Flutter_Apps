import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jedanaesta/bloc/animal_bloc.dart';
import 'package:jedanaesta/models/animal_model.dart';
import 'package:jedanaesta/widget/animal.dart';
import 'package:jedanaesta/widget/view_animal.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState() {
    context.read<AnimalBloc>().add(LoadAnimalsEvent());
    super.initState();
  }

  final pictureA = TextEditingController();
  final nameA = TextEditingController();
  final descA = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Text("+"),
        onPressed: () {
          showDialog<void>(
            context: context,
            barrierDismissible: false, // user must tap button!
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Animal"),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Picture'),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: TextField(
                                controller: pictureA,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Name'),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: TextField(
                                controller: nameA,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Desc'),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: TextField(
                              controller: descA,
                            ),
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text('Ok'),
                    onPressed: () {
                      context.read<AnimalBloc>().add(
                            AddAnimalEvent(
                              addedAnimal: AnimalModel(
                                  id: "",
                                  image: pictureA.text,
                                  name: nameA.text,
                                  desc: descA.text,
                                  done: false,
                                  feed: false,
                                  water: false),
                            ),
                          );

                      pictureA.text = '';
                      nameA.text = '';
                      descA.text = '';
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: const Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
      body: SafeArea(
          child: Container(
        height: double.infinity,
        color: Color.fromARGB(255, 205, 239, 255),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    child: Icon(
                      Icons.apps_outlined,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "Learn",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "assets/dog.jpg",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder<AnimalBloc, AnimalState>(
              builder: (context, state) {
                if (state.status == Status.error)
                  return Text(state.error ?? 'error');
                else {
                  return SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        ...state.listAnimal.map(
                          (e) => InkWell(
                            onTap: () {
                              context
                                  .read<AnimalBloc>()
                                  .add(SelectAnimalEvent(animal: e));
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ViewAnimal()),
                                // builder: (context) => NavigationBarApp()),
                              );
                            },
                            child: Animal(
                                animal: e,
                                selected: () {
                                  context
                                      .read<AnimalBloc>()
                                      .add(SelectEvent(id: e.id));
                                }),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ],
        ),
      )),
    );
  }
}
