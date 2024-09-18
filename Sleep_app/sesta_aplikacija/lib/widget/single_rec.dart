import 'package:flutter/material.dart';
import 'package:sesta_aplikacija/models/song_model.dart';

class SingleRec extends StatefulWidget {
  SongModel singleSong;
  SingleRec({super.key, required this.singleSong});

  @override
  State<SingleRec> createState() => _SingleRecState();
}

class _SingleRecState extends State<SingleRec> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.singleSong.picture),
              ),
            ),
          ),
          Text(
            widget.singleSong.name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 209, 209, 209),
            ),
          ),
          Text(
            "${widget.singleSong.typeMusic} - ${widget.singleSong.time}MIN",
            style: TextStyle(
              fontSize: 13,
              color: Color.fromARGB(255, 209, 209, 209),
            ),
          ),
        ],
      ),
    );
  }
}
