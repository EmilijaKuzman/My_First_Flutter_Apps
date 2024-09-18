import 'package:cetvrta_aplikacija/explore.dart';
import 'package:cetvrta_aplikacija/models/place_model.dart';
import 'package:cetvrta_aplikacija/singlePlace.dart';
import 'package:flutter/material.dart';

class Place extends StatelessWidget {
  PlaceModel place;
  Place({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SinglePlace(
                      place: place,
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 5),
        height: 250,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color.fromARGB(255, 243, 248, 254),
          image: DecorationImage(
              image: AssetImage(place.imageP), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Spacer(),
            Spacer(),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Color.fromARGB(255, 77, 86, 82),
                        ),
                        child: Center(
                          child: Text(
                            place.nameP,
                            style: TextStyle(
                              fontSize: 12,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 20,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                color: Color.fromARGB(255, 77, 86, 82),
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5),
                                      child: Icon(
                                        Icons.star_rounded,
                                        size: 15,
                                        color:
                                            Color.fromARGB(255, 238, 188, 49),
                                      ),
                                    ),
                                    Text(
                                      place.numP.toString(),
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons
                                      .favorite_outlined, //favorite_outline_rounded
                                  size: 15,
                                  color: Color.fromARGB(255, 255, 0, 0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
