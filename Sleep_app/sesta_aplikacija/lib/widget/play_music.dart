import 'package:flutter/material.dart';
import 'package:sesta_aplikacija/models/song_model.dart';
import 'package:sesta_aplikacija/widget/song_view.dart';

class PlayMusic extends StatefulWidget {
  SongModel song;

  PlayMusic({super.key, required this.song});

  @override
  State<PlayMusic> createState() => _PlayMusicState();
}

class _PlayMusicState extends State<PlayMusic> {
  bool p = false;
  double _incrementValue = 0.15;
  double _value = 0.90;
  void _incrementValueByAmount() {
    setState(() {
      if (_value + _incrementValue > 5)
        _value = 5;
      else
        _value += _incrementValue;
    });
  }

  void _decrementValueByAmount() {
    setState(() {
      if (_value - _incrementValue < 0)
        _value = 0;
      else
        _value -= _incrementValue;
    });
  }

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
                  image: AssetImage("assets/sinmusic.png"), fit: BoxFit.fill)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color.fromARGB(255, 230, 230, 242),
                      ),
                      child: Icon(
                        Icons.clear_outlined,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 2,
              ),
              Column(
                children: [
                  Text(
                    widget.song.name,
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 30),
                    child: Text(
                      widget.song.typeMusic,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: _decrementValueByAmount,
                        child: Container(
                          margin: EdgeInsets.only(top: 30, bottom: 30),
                          height: 50,
                          width: 40,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/prev.png"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30, bottom: 30),
                        height: 90,
                        width: 90,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/play.png"),
                                fit: BoxFit.fill)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      p = !p;
                                    });
                                  },
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      image: DecorationImage(
                                        scale: 1.5,
                                        image: AssetImage(
                                          p
                                              ? "assets/start.png"
                                              : "assets/pause.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: _incrementValueByAmount,
                        child: Container(
                          margin: EdgeInsets.only(top: 30, bottom: 30),
                          height: 50,
                          width: 40,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/next.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Slider(
                      thumbColor: Color.fromARGB(255, 142, 151, 253),
                      activeColor: Color.fromARGB(255, 255, 255, 255),
                      inactiveColor: Color.fromARGB(255, 158, 158, 158),
                      min: 0,
                      max: 5,
                      label: '$widget.currentS',
                      value: _value,
                      onChanged: (e) {
                        _value = e;
                        setState(() {});
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _value.toStringAsFixed(2),
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        Text(
                          "5:00",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
          //clear_outlined
        ),
      ),
    );
  }
}
