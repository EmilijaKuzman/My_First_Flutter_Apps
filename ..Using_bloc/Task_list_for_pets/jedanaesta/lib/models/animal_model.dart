import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class AnimalModel {
  String id;
  String image;
  String name;
  String desc;
  bool done;
  bool feed;
  bool water;
  AnimalModel({
    required this.id,
    required this.image,
    required this.name,
    required this.desc,
    required this.done,
    required this.feed,
    required this.water,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'image': image,
      'name': name,
      'desc': desc,
      'done': done,
      'feed': feed,
      'water': water,
    };
  }

  factory AnimalModel.fromMap(Map<String, dynamic> map) {
    return AnimalModel(
      id: map['id'] as String,
      image: map['image'] as String,
      name: map['name'] as String,
      desc: map['desc'] as String,
      done: map['done'] as bool,
      feed: map['feed'] as bool,
      water: map['water'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnimalModel.fromJson(String source) =>
      AnimalModel.fromMap(json.decode(source) as Map<String, dynamic>);

  AnimalModel copyWith({
    String? id,
    String? image,
    String? name,
    String? desc,
    bool? done,
    bool? feed,
    bool? water,
  }) {
    return AnimalModel(
      id: id ?? this.id,
      image: image ?? this.image,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      done: done ?? this.done,
      feed: feed ?? this.feed,
      water: water ?? this.water,
    );
  }
}
