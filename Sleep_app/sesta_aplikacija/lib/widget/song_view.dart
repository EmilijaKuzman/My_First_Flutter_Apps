import 'package:flutter/material.dart';
import 'package:sesta_aplikacija/models/song_model.dart';
import 'package:sesta_aplikacija/sleeppage.dart';
import 'package:sesta_aplikacija/widget/play_music.dart';
import 'package:sesta_aplikacija/widget/single_song.dart';

class SongView extends StatefulWidget {
  SongModel songView;

  SongView({super.key, required this.songView});

  @override
  State<SongView> createState() => _SongViewState();
}

class _SongViewState extends State<SongView> {
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
                  image: AssetImage("assets/line.png"), fit: BoxFit.fill)),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Container(
                            height: 250,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(widget.songView.picture),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            left: 20,
                            top: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 55,
                                    width: 55,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                      color: Color.fromARGB(255, 230, 230, 242),
                                    ),
                                    child: Icon(
                                      Icons.arrow_back_outlined,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 20,
                            top: 20,
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 5, right: 5),
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/like.png",
                                        height: 25,
                                        width: 25,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5, right: 5),
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/save.png",
                                        height: 25,
                                        width: 25,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            widget.songView.name,
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "${widget.songView.time}MIN - ${widget.songView.typeMusic}",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              widget.songView.des,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/love.png",
                                        height: 25,
                                        width: 25,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          "${widget.songView.numFavorits} Favorits",
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
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/lis.png",
                                        height: 25,
                                        width: 25,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          "${widget.songView.numListening} Listening",
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
                              ],
                            ),
                          ),
                          Divider(
                              color: const Color.fromARGB(255, 152, 161, 189)),
                          Text(
                            "Related",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SingleSong(
                                  singleSong: SongModel(
                                    name: "Night Island",
                                    des:
                                        "Sleep is a state of reduced mental and physical activity in which consciousness is altered and sensory activity is inhibited to a certain extent. ",
                                    picture: "assets/song1.png",
                                    time: "45",
                                    typeMusic: "SLEEP MUSIC",
                                    numFavorits: 2,
                                    numListening: 3,
                                    press: false,
                                    play: false,
                                  ),
                                ),
                                SingleSong(
                                  singleSong: SongModel(
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
                                ),
                                SingleSong(
                                  singleSong: SongModel(
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
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              //pomw(
                              PlayMusic(
                                song: widget.songView,
                              )));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  height: 63,
                  width: 374,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(38)),
                    color: Color.fromARGB(255, 142, 151, 253),
                  ),
                  child: Center(
                    child: Text(
                      "PLAY",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 255, 236, 204),
                      ),
                    ),
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
