part of 'song_bloc.dart';

@immutable
sealed class SongEvent {}

/*final class LoadSongs extends SongEvent {
  int? select;
  LoadSongs({this.select});
}

final class LoadType extends SongEvent {
  String? type;
  LoadType({this.type});
}*/

final class LoadString extends SongEvent {
  String? text;
  LoadString({this.text});
}

final class LoadCat extends SongEvent {
  CategoryModel? categ;
  LoadCat({this.categ});
}
