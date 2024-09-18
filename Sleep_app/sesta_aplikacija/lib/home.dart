import 'package:flutter/material.dart';
import 'package:sesta_aplikacija/widget/navbar.dart';
import 'package:sesta_aplikacija/widget/bottomline.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          //color: Color.fromARGB(255, 7, 7, 107),
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 3, 23, 76),
              image: DecorationImage(
                  image: AssetImage("assets/line.png"), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(right: 100, bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.zero),
                        image: DecorationImage(
                            image: AssetImage("assets/moon1.png"),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Text(
                      "Welcome to Sleep",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: const Color.fromARGB(255, 255, 236, 204),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Text(
                        "Explore the new king of sleep. It uses sound and vesualization to create perfect conditions for refreshing sleep.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          color: const Color.fromARGB(255, 255, 236, 204),
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: 300,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.zero),
                    image: DecorationImage(
                        image: AssetImage("assets/birds.png"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NavBar()),
                          // builder: (context) => NavigationBarApp()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 30, bottom: 40),
                        height: 63,
                        width: 374,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(38)),
                          color: Color.fromARGB(255, 142, 151, 253),
                        ),
                        child: Center(
                          child: Text(
                            "GET STARTED",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: const Color.fromARGB(255, 255, 236, 204),
                            ),
                          ),
                        ),
                      ),
                    ),
                    BottomLine(),
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
