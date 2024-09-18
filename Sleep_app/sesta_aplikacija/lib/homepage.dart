import 'package:flutter/material.dart';
import 'package:sesta_aplikacija/models/song_model.dart';
import 'package:sesta_aplikacija/widget/daily.dart';
import 'package:sesta_aplikacija/widget/single_rec.dart';
import 'package:sesta_aplikacija/widget/single_song.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<SongModel> listOfRec = [
    SongModel(
      name: "Night Island",
      des:
          "Sleep is a state of reduced mental and physical activity in which consciousness is altered and sensory activity is inhibited to a certain extent. ",
      picture: "assets/foc.png",
      time: "45",
      typeMusic: "SLEEP MUSIC",
      numFavorits: 2,
      numListening: 3,
      press: true,
      play: false,
    ),
    SongModel(
      name: "Good Night",
      des:
          "Sleep is a state of reduced mental and physical activity in which consciousness is altered and sensory activity is inhibited to a certain extent. ",
      picture: "assets/hap.png",
      time: "15",
      typeMusic: "SLEEP MUSIC",
      numFavorits: 2,
      numListening: 3,
      press: false,
      play: false,
    ),
    SongModel(
      name: "Good Night",
      des:
          "Sleep is a state of reduced mental and physical activity in which consciousness is altered and sensory activity is inhibited to a certain extent. ",
      picture: "assets/foc.png",
      time: "15",
      typeMusic: "SLEEP MUSIC",
      numFavorits: 2,
      numListening: 3,
      press: false,
      play: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 3, 23, 77),
            image: DecorationImage(
                image: AssetImage("assets/line.png"), fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Silent",
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Color.fromARGB(255, 241, 236, 236),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Image.asset(
                                    "assets/homemoon.png",
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                                Text(
                                  "Moon",
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Color.fromARGB(255, 241, 236, 236),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Good Morning, Afsar",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 241, 236, 236),
                                  ),
                                ),
                                Text(
                                  "We Wish you have a good day",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Color.fromARGB(255, 161, 160, 160),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color.fromARGB(255, 142, 151, 253),
                              ),
                              height: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 80,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/one.png"),
                                                    fit: BoxFit.fill),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Basics",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            "COURSE",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "3-10 MIN",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(38)),
                                            color: Color.fromARGB(
                                                255, 235, 234, 236),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "START",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color.fromARGB(255, 255, 219, 157),
                              ),
                              height: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 80,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/two.png"),
                                                    fit: BoxFit.fill),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Relaxation",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            "MUSIC",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "3-10 MIN",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(38)),
                                            color:
                                                Color.fromARGB(255, 63, 65, 78),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "START",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
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
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: Daily(
                        text: "Daily Thought",
                        des: "MEDITATION 3-10 MIN",
                        col: Color.fromARGB(255, 51, 50, 66),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    ...listOfRec.map((e) => SingleRec(singleSong: e)),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
