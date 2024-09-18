import 'package:flutter/material.dart';
import 'package:treca_aplikacija/ingredient.dart';
import 'package:treca_aplikacija/models/day_model.dart';
import 'package:treca_aplikacija/models/ingredient_model.dart';
import 'package:treca_aplikacija/models/today_model.dart';
import 'package:treca_aplikacija/widgets/category.dart';
import 'package:treca_aplikacija/widgets/sliderv.dart';

class FoodView extends StatefulWidget {
  TodayModel today;
  FoodView({super.key, required this.today});

  @override
  State<FoodView> createState() => _FoodViewState();
}

class _FoodViewState extends State<FoodView> {
  List<String> listT = ["SMALL", "REGULAR", "LARGE", "EXTRA LARGE"];
  List<DayModel> listWeekly = [
    DayModel(num: 0.1, dayn: "M"),
    DayModel(num: 0.8, dayn: "T"),
    DayModel(num: 0.3, dayn: "W"),
    DayModel(num: 0.2, dayn: "T"),
  ];
  @override
  void initState() {
    // TODO: implement initState
    t = listT.first;
    super.initState();
  }

  double _currentSliderValue = 20;

  late String t;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.today.name,
                        style: const TextStyle(
                          height: 2,
                          fontSize: 22,
                          color: Color.fromARGB(255, 31, 41, 118),
                        ),
                      ),
                      Text(
                        widget.today.weekly,
                        style: const TextStyle(
                          fontSize: 14,
                          height: 3,
                          color: Color.fromARGB(255, 187, 187, 187),
                        ),
                      ),
                      Image.asset(
                        height: 100,
                        width: 100,
                        widget.today.image,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...listT.map((e) => Category(
                        name: e,
                        checked: t == e,
                        onClick: () {
                          setState(() {
                            t = e;
                          });
                        })),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...widget.today.listIng.map((e) => Ingredient(ing: e)),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45)),
                  color: Color.fromARGB(255, 255, 210, 245),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Weekly Report",
                            style: const TextStyle(
                              height: 2,
                              fontSize: 26,
                              color: Color.fromARGB(255, 31, 41, 118),
                            ),
                          ),
                          Text(
                            widget.today.time,
                            style: const TextStyle(
                              height: 2,
                              fontSize: 20,
                              color: Color.fromARGB(255, 31, 41, 118),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ...listWeekly.map((e) => Sliderv(
                              dayM: e,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
