import 'package:flutter/material.dart';
import 'package:sesta_aplikacija/models/song_model.dart';
import 'package:sesta_aplikacija/widget/meditateview.dart';

class SingleMed extends StatefulWidget {
  SongModel song;
  SingleMed({super.key, required this.song});

  @override
  State<SingleMed> createState() => _SingleMedState();
}

class _SingleMedState extends State<SingleMed> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MeditateView(
                        medView: widget.song,
                      )));
        },
        child: Container(
          width: 180,
          child: Center(
            child: Stack(
              children: [
                Container(
                  height: 160,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        scale: 1.5,
                        image: AssetImage(
                          widget.song.picture,
                        ),
                        fit: BoxFit.fill),
                  ),
                  alignment: Alignment.center,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color:
                            Color.fromARGB(255, 195, 195, 195).withOpacity(0.8),
                      ),
                      width: 180,
                      height: 40,
                      alignment: Alignment.center,
                      child: Text(
                        widget.song.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
