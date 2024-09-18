import 'package:flutter/material.dart';
import 'package:sesta_aplikacija/models/song_model.dart';
import 'package:sesta_aplikacija/models/story_type_model.dart';
import 'package:sesta_aplikacija/widget/navbar.dart';
import 'package:sesta_aplikacija/widget/single_song.dart';
import 'package:sesta_aplikacija/widget/story_type.dart';

class SleepPage extends StatefulWidget {
  const SleepPage({super.key});

  @override
  State<SleepPage> createState() => _SleepPageState();
}

class _SleepPageState extends State<SleepPage> {
  List<StoryTypeModel> listType = [
    StoryTypeModel(name: "All", img: "assets/s1.png"),
    StoryTypeModel(name: "My", img: "assets/s2.png"),
    StoryTypeModel(name: "Anxious", img: "assets/s3.png"),
    StoryTypeModel(name: "Sleep", img: "assets/s4.png"),
    StoryTypeModel(name: "Kids", img: "assets/s5.png"),
  ];

  List<SongModel> listOfSongs = [
    SongModel(
      name: "Night Island",
      des:
          "Sleep is a state of reduced mental and physical activity in which consciousness is altered and sensory activity is inhibited to a certain extent. ",
      picture: "assets/song1.png",
      time: "45",
      typeMusic: "SLEEP MUSIC",
      numFavorits: 2,
      numListening: 3,
      press: true,
      play: false,
    ),
    SongModel(
      name: "Sweet Sleep",
      des:
          "Sleep is a state of reduced mental and physical activity in which consciousness is altered and sensory activity is inhibited to a certain extent.Sleep is a state of reduced mental and physical activity in which consciousness is altered and sensory activity is inhibited to a certain extent.Sleep is a state of reduced mental and physical activity in which consciousness is altered and sensory activity is inhibited to a certain extent. ",
      picture: "assets/song2.png",
      time: "30",
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
      picture: "assets/song3.png",
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
      picture: "assets/song4.png",
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
      picture: "assets/song3.png",
      time: "15",
      typeMusic: "SLEEP MUSIC",
      numFavorits: 2,
      numListening: 3,
      press: false,
      play: false,
    ),
  ];

  void initState() {
    story = listType.first;
    super.initState();
  }

  late StoryTypeModel story;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          //color: Color.fromARGB(255, 7, 7, 107),
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 3, 23, 77),
              image: DecorationImage(
                  image: AssetImage("assets/line.png"), fit: BoxFit.fill)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(right: 170, bottom: 20, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.zero),
                    image: DecorationImage(
                        image: AssetImage("assets/moon1.png"),
                        fit: BoxFit.fill),
                  ),
                ),
                Text(
                  "Sleep Stories",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: const Color.fromARGB(255, 255, 236, 204),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Text(
                    "Soothing bedtime stories to help you fall into a deep and natural sleep",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      color: const Color.fromARGB(255, 255, 236, 204),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...listType
                          .map(
                            (e) => StoryType(
                                stype: e,
                                select: story == e,
                                onTap: () {
                                  setState(() {
                                    story = e;
                                  });
                                }),
                          )
                          .toList(),
                    ],
                  ),
                ),
                Container(
                  height: 230,
                  width: 370,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 2, 2, 58),
                      image: DecorationImage(
                          image: AssetImage("assets/storymoon.png"),
                          fit: BoxFit.cover)),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(38)),
                                color: Color.fromARGB(255, 142, 151, 253),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/lock.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: 300,
                          child: Column(
                            children: [
                              Text(
                                "The ocean moon",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 36,
                                  color:
                                      const Color.fromARGB(255, 255, 236, 204),
                                ),
                              ),
                              Text(
                                "Non-stop 8- hour mixes of our most popular sleep audio",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      const Color.fromARGB(255, 255, 236, 204),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          height: 35,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "START",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  direction: Axis.horizontal,
                  children: <Widget>[
                    ...listOfSongs.map((e) => SingleSong(singleSong: e)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
