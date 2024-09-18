import 'package:flutter/material.dart';
import 'package:sesta_aplikacija/models/song_model.dart';
import 'package:sesta_aplikacija/widget/song_view.dart';

class SingleSong extends StatefulWidget {
  SongModel singleSong;
  SingleSong({super.key, required this.singleSong});

  @override
  State<SingleSong> createState() => _SingleSongState();
}

class _SingleSongState extends State<SingleSong> {
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
        margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: 177,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage(widget.singleSong.picture),
                ),
              ),
            ),
            Text(
              widget.singleSong.name,
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Text(
              "${widget.singleSong.time}MIN - ${widget.singleSong.typeMusic}",
              style: TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
