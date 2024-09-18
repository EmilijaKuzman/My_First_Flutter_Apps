import 'package:deveta/blocsong/bloc/song_bloc.dart';
import 'package:deveta/models/song_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Song extends StatelessWidget {
  SongModel song;
  Song({super.key, required this.song});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(song.picture),
              ),
            ),
          ),
          Column(
            children: [
              Text(
                song.name,
                style: const TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 92, 92, 92),
                ),
              ),
              BlocBuilder<SongBloc, SongState>(
                builder: (context, state) {
                  return Text(state.txt ?? ".");
                },
              ),
              /*Text(
                song.des,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 92, 92, 92),
                ),
              ),*/
            ],
          )
        ],
      ),
    );
  }
}
