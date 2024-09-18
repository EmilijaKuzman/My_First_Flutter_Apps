import 'package:flutter/material.dart';
import 'package:treca_aplikacija/food.dart';
import 'package:treca_aplikacija/models/food_model.dart';
import 'package:treca_aplikacija/models/ingredient_model.dart';
import 'package:treca_aplikacija/models/today_model.dart';
import 'package:treca_aplikacija/today.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<FoodModel> listFood = [
    FoodModel(imageF: "assets/cheese.png", category: "1"),
    FoodModel(imageF: 'assets/egg.png', category: "2"),
    FoodModel(imageF: 'assets/Group.png', category: "3"),
    FoodModel(imageF: 'assets/pizza.png', category: "4"),
    FoodModel(imageF: 'assets/cheese.png', category: "5"),
    FoodModel(imageF: 'assets/cheese.png', category: "6"),
    FoodModel(imageF: 'assets/egg.png', category: "7"),
    FoodModel(imageF: 'assets/Group.png', category: "8"),
    FoodModel(imageF: 'assets/pizza.png', category: "9"),
  ];

  List<TodayModel> listToday = [
    TodayModel(
      image: "assets/fast-food.png",
      name: "Cheese Burger",
      text: "Foodies Squad",
      money: "15",
      weekly: "4 eaten this week",
      category: "1",
      listIng: [
        IngredientModel(
            imageI: "assets/pizza.png", name: "dsfsd", number: "dsfsd"),
        IngredientModel(
            imageI: "assets/Vector.png", name: "dsfsd", number: "dsfsd"),
        IngredientModel(
            imageI: "assets/Vector.png", name: "dsfsd", number: "dsfsd"),
        IngredientModel(
            imageI: "assets/Vector.png", name: "dsfsd", number: "dsfsd"),
        IngredientModel(
            imageI: "assets/Vector.png", name: "dsfsd", number: "dsfsd"),
      ],
      time: "(15-20)",
    ),
    TodayModel(
      image: "assets/sushi.png",
      name: "Cripsy Sweet",
      text: "Italiano Sweets",
      money: "20",
      weekly: "4 eaten this week",
      category: "2",
      listIng: [
        IngredientModel(
            imageI: "assets/pizza.png", name: "dsfsd", number: "dsfsd"),
        IngredientModel(
            imageI: "assets/Vector.png", name: "dsfsd", number: "dsfsd"),
      ],
      time: "(5-20)",
    ),
    TodayModel(
      image: "assets/sandwich.png",
      name: "Mint Sandwich",
      text: "Asmi Food",
      money: "25",
      weekly: "4 eaten this week",
      category: "3",
      listIng: [
        IngredientModel(
            imageI: "assets/pizza.png", name: "dsfsd", number: "dsfsd"),
      ],
      time: "(1-20)",
    ),
    TodayModel(
      image: "assets/watermelon.png",
      name: "Watermelon Juice",
      text: "Juice Corer",
      money: "8",
      weekly: "4 eaten this week",
      category: "4",
      listIng: [
        IngredientModel(
            imageI: "assets/pizza.png", name: "dsfsd", number: "dsfsd"),
      ],
      time: "(15-20)",
    ),
    TodayModel(
      image: "assets/watermelon.png",
      name: "Watermelon Juice",
      text: "Juice Corer",
      money: "8",
      weekly: "4 eaten this week",
      category: "5",
      listIng: [
        IngredientModel(
            imageI: "assets/pizza.png", name: "dsfsd", number: "dsfsd"),
      ],
      time: "(15-20)",
    ),
    TodayModel(
      image: "assets/fast-food.png",
      name: "Cheese Burger",
      text: "Foodies Squad",
      money: "15",
      weekly: "4 eaten this week",
      category: "5",
      listIng: [
        IngredientModel(
            imageI: "assets/pizza.png", name: "dsfsd", number: "dsfsd"),
      ],
      time: "(15-30)",
    ),
  ];
  @override
  void initState() {
    // TODO: implement initState
    tt = listFood.first;
    super.initState();
  }

  late FoodModel tt;
  String s = "";
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 247, 248, 255),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45)),
                  color: Color.fromARGB(255, 255, 74, 77),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 31, left: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Good Morning,\nSobuj",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 30, bottom: 20),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Container(
                                    color: Colors.amber,
                                    child: Image.asset(
                                      height: 55,
                                      width: 55,
                                      'assets/cherry-success.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              textAlign: TextAlign.left,
                              "Choose your favourite food!",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 189, 204),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(23),
                    child: Text(
                      "Discover",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 31, 41, 118),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: listFood
                        .map(
                          (model) => Food(
                            food: model,
                            select: tt == model,
                            onTap: () {
                              setState(() {
                                tt = model;
                              });
                            },
                          ),
                        )
                        .toList(),
                    // const SizedBox(width: 100, height: 20)
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(23),
                    child: Text(
                      "Today's Top",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 31, 41, 118),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: listToday
                        .where((element) => element.category == tt.category)
                        .map((e) => Today(
                              today: e,
                            ))
                        .toList(),
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
