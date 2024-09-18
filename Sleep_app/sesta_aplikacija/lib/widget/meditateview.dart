import 'package:flutter/material.dart';
import 'package:sesta_aplikacija/meditatepage.dart';
import 'package:sesta_aplikacija/models/song_model.dart';
import 'package:sesta_aplikacija/widget/play_music.dart';

class MeditateView extends StatefulWidget {
  SongModel medView;
  MeditateView({super.key, required this.medView});

  @override
  State<MeditateView> createState() => _MeditateViewState();
}

class _MeditateViewState extends State<MeditateView> {
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
                      margin: EdgeInsets.all(10),
                      //height: 100,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                color: Color.fromARGB(255, 230, 230, 242),
                              ),
                              child: const Icon(
                                Icons.arrow_back_outlined,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.medView.name,
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 219, 199, 163),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 10),
                          child: Text(
                            widget.medView.des,
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 245, 229, 200),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 30, right: 30, top: 10, bottom: 10),
                      height: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(widget.medView.picture),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "${widget.medView.time} MIN",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "- ${widget.medView.typeMusic} -",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
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
                                song: widget.medView,
                              )));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  height: 63,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(38)),
                    color: Color.fromARGB(255, 219, 199, 163),
                  ),
                  child: Center(
                    child: Text(
                      "START",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 104, 102, 98),
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
