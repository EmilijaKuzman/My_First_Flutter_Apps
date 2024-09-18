import 'package:flutter/material.dart';
import 'package:sesta_aplikacija/models/song_model.dart';
import 'package:sesta_aplikacija/widget/song_view.dart';

class SingleMusic extends StatefulWidget {
  SongModel singleSong;
  SingleMusic({super.key, required this.singleSong});

  @override
  State<SingleMusic> createState() => _SingleMusicState();
}

class _SingleMusicState extends State<SingleMusic> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SongView(
                      songView: widget.singleSong,
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(4),
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.singleSong.picture),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.singleSong.name,
                      style: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    Text(
                      " - " + widget.singleSong.typeMusic + " - ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 180, 180, 180),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "${widget.singleSong.time} MIN",
              style: TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 255, 223, 223),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
