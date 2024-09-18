import 'package:flutter/material.dart';
import 'package:treca_aplikacija/foodview.dart';
import 'package:treca_aplikacija/models/today_model.dart';

class Today extends StatelessWidget {
  TodayModel today;
  Today({super.key, required this.today});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(children: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodView(
                      today: today,
                    ),
                  ),
                );
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        color: Color.fromARGB(30, 165, 139, 255),
                      ),

                      child: Center(
                        child: Image.asset(
                          today.image,
                          height: 34,
                          width: 34,
                          fit: BoxFit.fill,
                        ),
                      ),
                      // ),
                      // ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              textAlign: TextAlign.left,
                              today.name,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 31, 41, 118),
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.left,
                              today.text,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 179, 182, 203),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),

                      //Text("\$"),
                      child: Text(
                        textAlign: TextAlign.left,
                        "\$${today.money}",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 31, 41, 118),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
