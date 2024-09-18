import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jedanaesta/bloc/animal_bloc.dart';
import 'package:jedanaesta/models/animal_model.dart';

class ViewAnimal extends StatelessWidget {
  ViewAnimal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final name = TextEditingController();
    final desc = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 149, 217, 248),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: BlocBuilder<AnimalBloc, AnimalState>(
                  builder: (context, state) {
                    if (state.selectAnimal == null) {
                      return const CircularProgressIndicator();
                    } else {
                      return Stack(
                        children: [
                          Container(
                            height: 330,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(50),
                                  bottomStart: Radius.circular(50)),
                              image: DecorationImage(
                                  image:
                                      NetworkImage(state.selectAnimal!.image),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                      color: Color.fromARGB(255, 230, 230, 242),
                                    ),
                                    child: Icon(
                                      Icons.arrow_back_outlined,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }
                  },
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: BlocBuilder<AnimalBloc, AnimalState>(
                    builder: (context, state) {
                      if (state.selectAnimal == null) {
                        return const CircularProgressIndicator();
                      } else {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  state.selectAnimal!.name,
                                  style: const TextStyle(
                                    fontSize: 30,
                                    color: Color.fromARGB(255, 94, 82, 82),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    showDialog<void>(
                                      context: context,
                                      barrierDismissible:
                                          false, // user must tap button!
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text("Name"),
                                          content: SingleChildScrollView(
                                            child: ListBody(
                                              children: <Widget>[
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    const Text('Text'),
                                                    Expanded(
                                                        child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 20),
                                                      child: TextField(
                                                        controller: name,
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
                                                    UpdateNameEvent(
                                                        name: name.text));
                                                name.text = '';

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
                                  child: Container(
                                    height: 35,
                                    width: 120, 
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color:
                                            Color.fromARGB(255, 124, 167, 185)),
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Edit name",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: InkWell(
                                onTap: () {
                                  showDialog<void>(
                                    context: context,
                                    barrierDismissible:
                                        false, // user must tap button!
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text("Desc"),
                                        content: SingleChildScrollView(
                                          child: ListBody(
                                            children: <Widget>[
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  const Text('Text'),
                                                  Expanded(
                                                      child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20),
                                                    child: TextField(
                                                      controller: desc,
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
                                                  UpdateDescEvent(
                                                      desc: desc.text));
                                              desc.text = '';

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
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      state.selectAnimal!.desc,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Color.fromARGB(255, 94, 82, 82),
                                      ),
                                    ),
                                    Container(
                                      height: 35,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Color.fromARGB(
                                              255, 124, 167, 185)),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Edit desc",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 94, 82, 82),
                                    width: 2,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "List To Do",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              color: Color.fromARGB(
                                                  255, 94, 82, 82)),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Color.fromARGB(
                                              255, 148, 163, 170)),
                                      height: 40,
                                      margin: EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Checkbox(
                                            value: state.selectAnimal!.feed,
                                            onChanged: (e) {
                                              context
                                                  .read<AnimalBloc>()
                                                  .add(SelectFeedEvent());
                                              //selected();
                                            },
                                          ),
                                          Expanded(
                                            child: const Text(
                                              "Animal feeded",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Color.fromARGB(
                                              255, 148, 163, 170)),
                                      height: 40,
                                      margin: EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Checkbox(
                                            value: state.selectAnimal!.water,
                                            //state.selectAnimal!.feed,
                                            onChanged: (e) {
                                              context
                                                  .read<AnimalBloc>()
                                                  .add(SelectWaterEvent());
                                            },
                                          ),
                                          const Expanded(
                                            child: Text(
                                              "Animal drink water",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
