import 'package:bloc/bloc.dart';
import 'package:deveta/models/category_model.dart';
import 'package:deveta/models/song_model.dart';
import 'package:meta/meta.dart';

part 'song_event.dart';
part 'song_state.dart';

class SongBloc extends Bloc<SongEvent, SongState> {
  List<SongModel> listSongs = [
    SongModel(
      picture: "assets/song1.png",
      name: "name",
      des: "des",
      category: 1,
    ),
    SongModel(
      picture: "assets/song2.png",
      name: "name",
      des: "des",
      category: 2,
    ),
    SongModel(
      picture: "assets/song3.png",
      name: "ddas",
      des: "des",
      category: 1,
    ),
    SongModel(
      picture: "assets/song4.png",
      name: "name",
      des: "des",
      category: 3,
    ),
    SongModel(
      picture: "assets/song2.png",
      name: "name",
      des: "des",
      category: 4,
    ),
  ];
  SongBloc() : super(SongState(status: Status.load)) {
    /*on<LoadSongs>((event, emit) async {
      // TODO: implement event handler
      try {
        emit(state.copyWith(status: Status.load));
        await Future.delayed(Duration(seconds: 1));
        emit(state.copyWith(
            status: Status.loaded,
            listS: listSongs
                .where((element) => element.category == event.select)
                .toList()));
      } catch (e) {
        emit(state.copyWith(status: Status.error, error: e.toString()));
      }
    });
    on<LoadType>((event, emit) async {
      // TODO: implement event handler
      try {
        emit(state.copyWith(status: Status.load));
        await Future.delayed(Duration(seconds: 1));
        emit(state.copyWith(
          status: Status.loaded,
          type: event.type,
        ));
      } catch (e) {
        emit(state.copyWith(status: Status.error, error: e.toString()));
      }
    });*/
    on<LoadString>((event, emit) async {
      // TODO: implement event handler
      emit(state.copyWith(txt: event.text));
    });

    on<LoadCat>((event, emit) async {
      // TODO: implement event handler
      try {
        emit(state.copyWith(status: Status.load));
        await Future.delayed(Duration(seconds: 1));
        emit(state.copyWith(
            type: event.categ?.type,
            status: Status.loaded,
            listS: listSongs
                .where((element) => element.category == event.categ?.category)
                .toList()));
      } catch (e) {
        emit(state.copyWith(status: Status.error, error: e.toString()));
      }
    });
  }
}
