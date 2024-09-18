// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'song_bloc.dart';

enum Status { initial, load, loaded, error }

@immutable
class SongState {
  List<SongModel> listS = [];
  String? error;
  Status status;
  String? type;
  String? txt;
  List<String> listStr = [];
  SongState({
    this.listS = const [],
    this.error,
    required this.status,
    this.type,
    this.listStr = const [],
    this.txt,
  });

  SongState copyWith({
    List<SongModel>? listS,
    String? error,
    Status? status,
    String? type,
    String? txt,
    List<String>? listStr,
  }) {
    return SongState(
      listS: listS ?? this.listS,
      error: error ?? this.error,
      status: status ?? this.status,
      type: type ?? this.type,
      txt: txt ?? this.txt,
      listStr: listStr ?? this.listStr,
    );
  }
}
