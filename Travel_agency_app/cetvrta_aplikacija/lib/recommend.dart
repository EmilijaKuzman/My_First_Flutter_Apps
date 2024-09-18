import 'package:cetvrta_aplikacija/models/place_model.dart';
import 'package:cetvrta_aplikacija/singlePlace.dart';
import 'package:flutter/material.dart';

class Recommend extends StatelessWidget {
  PlaceModel place;
  Recommend({super.key, required this.place});

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
        height: 150,
        width: 174,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color.fromARGB(255, 243, 248, 254),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image: AssetImage(place.imageP),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Positioned(
                      //<-- SEE HERE
                      right: 5,
                      top: 92,
                      child: Container(
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Align(
                              child: Container(
                                height: 16,
                                width: 44,
                                margin: EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  color: Color.fromARGB(255, 243, 248, 254),
                                ),
                              ),
                            ),
                            Positioned(
                              child: Container(
                                height: 12,
                                width: 40,
                                margin: EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  color: Color.fromARGB(255, 58, 84, 79),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      place.period,
                                      style: TextStyle(
                                        fontSize: 8,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
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
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      place.nameP,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 5),
                        child: Icon(
                          Icons.airline_stops,
                          size: 10,
                          color: Color.fromARGB(255, 132, 171, 228),
                        ),
                      ),
                      Text(
                        "Hot Deal",
                        style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
