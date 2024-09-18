class SongModel {
  String name;
  String des;
  String picture;
  String time;
  String typeMusic;
  int numFavorits;
  int numListening;
  bool press;
  bool play;
  SongModel({
    required this.name,
    required this.des,
    required this.picture,
    required this.time,
    required this.typeMusic,
    required this.numFavorits,
    required this.numListening,
    required this.press,
    required this.play,
  });
}
