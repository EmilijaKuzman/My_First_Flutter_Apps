import 'package:flutter/material.dart';
import 'package:sesta_aplikacija/models/song_model.dart';
import 'package:sesta_aplikacija/models/story_type_model.dart';
import 'package:sesta_aplikacija/widget/daily.dart';
import 'package:sesta_aplikacija/widget/single_med.dart';
import 'package:sesta_aplikacija/widget/story_type.dart';

class MeditatePage extends StatefulWidget {
  const MeditatePage({super.key});

  @override
  State<MeditatePage> createState() => _MeditatePageState();
}

class _MeditatePageState extends State<MeditatePage> {
  List<SingleMed> listOfMed = [
    SingleMed(
      song: SongModel(
        name: "7 Days of Calm",
        des:
            "Sleep is a state of reduced mental and physical activity in which consciousness is altered and sensory activity is inhibited to a certain extent. ",
        picture: "assets/pic1.png",
        time: "45",
        typeMusic: "MEDITATE",
        numFavorits: 2,
        numListening: 3,
        press: true,
        play: false,
      ),
    ),
    SingleMed(
      song: SongModel(
        name: "Anxiet Release",
        des:
            "Sleep is a state of reduced mental and physical activity in which consciousness is altered and sensory activity is inhibited to a certain extent. ",
        picture: "assets/pic2.png",
        time: "45",
        typeMusic: "MEDITATE",
        numFavorits: 2,
        numListening: 3,
        press: true,
        play: false,
      ),
    ),
    SingleMed(
      song: SongModel(
        name: "Sea",
        des:
            "Sleep is a state of reduced mental and physical activity in which consciousness is altered and sensory activity is inhibited to a certain extent. ",
        picture: "assets/pic3.png",
        time: "45",
        typeMusic: "MEDITATE",
        numFavorits: 2,
        numListening: 3,
        press: true,
        play: false,
      ),
    ),
    SingleMed(
      song: SongModel(
        name: "Nature",
        des:
            "Sleep is a state of reduced mental and physical activity in which consciousness is altered and sensory activity is inhibited to a certain extent. ",
        picture: "assets/pic4.png",
        time: "45",
        typeMusic: "MEDITATE",
        numFavorits: 2,
        numListening: 3,
        press: true,
        play: false,
      ),
    ),
    SingleMed(
      song: SongModel(
        name: "Calme",
        des:
            "Sleep is a state of reduced mental and physical activity in which consciousness is altered and sensory activity is inhibited to a certain extent. ",
        picture: "assets/pic1.png",
        time: "45",
        typeMusic: "MEDITATE",
        numFavorits: 2,
        numListening: 3,
        press: true,
        play: false,
      ),
    ),
  ];
  List<StoryTypeModel> listType = [
    StoryTypeModel(name: "All", img: "assets/s1.png"),
    StoryTypeModel(name: "My", img: "assets/s2.png"),
    StoryTypeModel(name: "Anxious", img: "assets/s3.png"),
    StoryTypeModel(name: "Sleep", img: "assets/s4.png"),
    StoryTypeModel(name: "Kids", img: "assets/s5.png"),
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
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Text(
                    "Meditate",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: const Color.fromARGB(255, 255, 236, 204),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: Text(
                      "we can learn how to recognize when our minds are doing their normal everyday acrobatics.",
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
                  Daily(
                    text: "Daily Calm",
                    des: "APR 30 - PAUSE PRACTICE",
                    col: Color.fromARGB(255, 190, 155, 90),
                  ),
                  Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    direction: Axis.horizontal,
                    children: <Widget>[
                      ...listOfMed.map((e) => e),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
