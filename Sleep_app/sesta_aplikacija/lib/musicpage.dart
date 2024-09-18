import 'package:flutter/material.dart';
import 'package:sesta_aplikacija/models/song_model.dart';
import 'package:sesta_aplikacija/widget/singlemusic.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  List<SongModel> listSongs = [
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
      name: "Morning Bliss",
      des: "Start your day with a sense of peace and calmness.",
      picture: "assets/song10.jpg",
      time: "10",
      typeMusic: "MORNING MUSIC",
      numFavorits: 5,
      numListening: 7,
      press: false,
      play: false,
    ),
    SongModel(
      name: "Relaxation Oasis",
      des: "Escape to a serene oasis with soothing melodies.",
      picture: "assets/song2.png",
      time: "20",
      typeMusic: "RELAXATION MUSIC",
      numFavorits: 8,
      numListening: 12,
      press: false,
      play: false,
    ),
    SongModel(
      name: "Deep Sleep Journey",
      des: "Embark on a journey to deep and restful sleep.",
      picture: "assets/song4.png",
      time: "30",
      typeMusic: "SLEEP MUSIC",
      numFavorits: 3,
      numListening: 5,
      press: false,
      play: false,
    ),
    SongModel(
      name: "Zen Meditation",
      des: "Find inner peace through the art of Zen meditation.",
      picture: "assets/song3.png",
      time: "25",
      typeMusic: "MEDITATION MUSIC",
      numFavorits: 10,
      numListening: 15,
      press: false,
      play: false,
    ),
    SongModel(
      name: "Euphoric Melodies",
      des: "Immerse yourself in euphoria with uplifting melodies.",
      picture: "assets/song4.png",
      time: "18",
      typeMusic: "UPBEAT MUSIC",
      numFavorits: 6,
      numListening: 8,
      press: false,
      play: false,
    ),
    SongModel(
      name: "Calm Waters",
      des: "Let the gentle sounds of calm waters lull you into tranquility.",
      picture: "assets/song10.jpg",
      time: "22",
      typeMusic: "NATURE MUSIC",
      numFavorits: 4,
      numListening: 6,
      press: false,
      play: false,
    ),
    SongModel(
      name: "Chill Vibes",
      des: "Experience the ultimate chill vibes with this relaxing track.",
      picture: "assets/song11.jpg",
      time: "17",
      typeMusic: "CHILL MUSIC",
      numFavorits: 7,
      numListening: 10,
      press: false,
      play: false,
    ),
    SongModel(
      name: "Serenade Sunset",
      des: "Watch the sunset while being serenaded by soothing melodies.",
      picture: "assets/song2.png",
      time: "28",
      typeMusic: "SUNSET MUSIC",
      numFavorits: 12,
      numListening: 18,
      press: false,
      play: false,
    ),
    SongModel(
      name: "Jazz Groove",
      des: "Get into the groove with smooth jazz vibes.",
      picture: "assets/song1.png",
      time: "21",
      typeMusic: "JAZZ MUSIC",
      numFavorits: 9,
      numListening: 13,
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
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "List of songs",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    ...listSongs.map((e) => SingleMusic(singleSong: e))
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
