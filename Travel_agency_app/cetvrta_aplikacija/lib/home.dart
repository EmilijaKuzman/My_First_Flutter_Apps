import 'package:cetvrta_aplikacija/explore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Rectangle.png"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  "Aspen",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 60,
                      fontFamily: 'Hiatus',
                      color: const Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
            Spacer(),



            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "Plan your",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.aDLaMDisplay(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "Luxurious\nVacation",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Hiatus',
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Explore()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Color.fromARGB(255, 23, 111, 242),
                          ),
                          width: 300,
                          height: 52,
                          child: Center(
                            child: Text(
                              "Explore",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Ariel',
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
