import 'package:flutter/material.dart';
import 'package:peta_aplikacija/cart.dart';
import 'package:peta_aplikacija/models/checkout_model.dart';
import 'package:peta_aplikacija/models/profile_model.dart';
import 'package:peta_aplikacija/models/single_page_model.dart';
import 'package:peta_aplikacija/models/type_model.dart';
import 'package:peta_aplikacija/profile.dart';
import 'package:peta_aplikacija/single_c.dart';
import 'package:peta_aplikacija/single_page.dart';
import 'package:peta_aplikacija/type.dart';
import 'package:peta_aplikacija/widget/header.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<TypeModel> listT = [
    TypeModel(text: "Trending Now"),
    TypeModel(text: "All"),
    TypeModel(text: "New"),
  ];

  List<SinglePageModel> listPages = [
    SinglePageModel(
        image: "assets/profile1.png",
        des: "Jacket Jeans",
        price: 2.45,
        press: false,
        listSize: ["XS", "X", "M", "L"],
        listColors: [
          Color.fromARGB(255, 0, 255, 0),
          Color.fromARGB(255, 0, 255, 255),
          Color.fromARGB(255, 255, 255, 0),
        ],
        shipping: 3.45),
    SinglePageModel(
        image: "assets/profile2.png",
        des: "Acrylic Sweater",
        price: 8.6,
        press: false,
        listSize: ["XS", "X", "M"],
        listColors: [
          Color.fromARGB(255, 0, 255, 0),
          Color.fromARGB(255, 0, 255, 255),
          Color.fromARGB(255, 255, 255, 0),
        ],
        shipping: 3.45),
    SinglePageModel(
        image: "assets/profile2.png",
        des: "Acrylic Sweater",
        price: 8.6,
        press: true,
        listSize: ["X", "M", "L"],
        listColors: [
          Color.fromARGB(255, 255, 157, 0),
          Color.fromARGB(255, 238, 0, 255),
          Color.fromARGB(255, 255, 255, 0),
          Color.fromARGB(255, 255, 47, 0),
          Color.fromARGB(255, 0, 255, 255),
          Color.fromARGB(255, 157, 0, 255),
        ],
        shipping: 3.45),
    SinglePageModel(
        image: "assets/prof4.png",
        des: "Acrylic Sweater",
        price: 8.6,
        press: true,
        listSize: ["X", "M", "L", "XXL"],
        listColors: [
          Color.fromARGB(255, 255, 47, 0),
          Color.fromARGB(255, 0, 255, 255),
          Color.fromARGB(255, 157, 0, 255),
        ],
        shipping: 3.45),
  ];

  List<CheckModel> listCheck = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 254, 214, 214),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Text(
                  "Match Your Style",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 48,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            height: 20,
                            width: 20,
                            "assets/search.png",
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Find things to do",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 196, 207, 219),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: listT.map((e) => Type(type: e)).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
                child: Container(
                  height: 530,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      direction: Axis.horizontal,
                      children: <Widget>[
                        ...listPages.map(
                          (e) => SinglePage(
                            sPage: e,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SingleC(
                                    page: e,
                                    listCheck: listCheck,
                                    onClick: () {
                                      setState(() {});
                                    },
                                  ),
                                ),
                              );
                            },
                            onTapLike: () {
                              setState(() {
                                e.press = !e.press;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: //Footer(),
                    Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Image.asset(
                          height: 25,
                          width: 25,
                          "assets/home.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          height: 25,
                          width: 25,
                          "assets/vec.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cart(
                                        listCheck: listCheck,
                                      )));
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 2),
                                child: Container(
                                  height: 13,
                                  width: 13,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    color: Color.fromARGB(255, 180, 176, 176),
                                  ),
                                  child: Center(
                                    child: Text(
                                      listCheck.length.toString(),
                                      style: TextStyle(
                                        fontSize: 8,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Image.asset(
                                height: 25,
                                width: 25,
                                "assets/buy.png",
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile(
                                      prof: ProfileModel(
                                          name: "Lizz",
                                          picture: "assets/Ellipse2.png"))));
                        },
                        child: Container(
                          child: Image.asset(
                            height: 25,
                            width: 25,
                            "assets/profile.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
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
