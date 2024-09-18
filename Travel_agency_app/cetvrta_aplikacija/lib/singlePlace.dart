import 'package:cetvrta_aplikacija/facilities.dart';
import 'package:cetvrta_aplikacija/models/facilities_model.dart';
import 'package:cetvrta_aplikacija/models/place_model.dart';
import 'package:flutter/material.dart';

class SinglePlace extends StatelessWidget {
  PlaceModel place;

  SinglePlace({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(75, 88, 155, 255),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional.center,
                        child: Container(
                          height: 340,
                          width: 370,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color.fromARGB(255, 243, 248, 254),
                            image: DecorationImage(
                                image: AssetImage(place.imageP),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Positioned(
                        //<-- SEE HERE
                        right: 20,
                        top: 350,
                        child: Container(
                          height: 44,
                          width: 44,
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Center(
                            child: Icon(
                              Icons
                                  .favorite_outlined, //favorite_outline_rounded
                              size: 24,
                              color: Color.fromARGB(255, 255, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            place.nameP,
                            style: TextStyle(
                              fontSize: 24,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Text(
                            "Show map",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 23, 111, 242),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star_rounded,
                            size: 15,
                            color: Color.fromARGB(255, 238, 188, 49),
                          ),
                          Text(
                            place.numP.toString(),
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Text(
                            "(" + place.rew.toString() + " Reviews)",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          height: 90,
                          child: Text(
                            place.des,
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            Text(
                              "Read more",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 23, 111, 242),
                              ),
                            ),
                            Icon(
                              Icons.expand_more,
                              size: 15,
                              color: Color.fromARGB(255, 23, 111, 242),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Facilites",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            ...place.listFac.map((e) => Facilities(
                                  fac: e,
                                )),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Price",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 23, 111, 242),
                                  ),
                                ),
                                Text(
                                  "\$${place.price}",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 23, 111, 242),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 56,
                              width: 220,
                              margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                color: Color.fromARGB(255, 0, 0, 255),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Book Now",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_tab,
                                    size: 16,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ],
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
          ),
        ),
      ),
    );
  }
}
