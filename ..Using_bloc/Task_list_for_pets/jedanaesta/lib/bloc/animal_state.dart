// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'animal_bloc.dart';

enum Status { initial, load, loaded, error }

@immutable
class AnimalState {
  final List<AnimalModel> listAnimal;
  final Status status;
  final String? error;
  final AnimalModel? selectAnimal;
  AnimalState({
    this.listAnimal = const [],
    required this.status,
    this.error,
    this.selectAnimal,
  });

  AnimalState copyWith({
    List<AnimalModel>? listAnimal,
    Status? status,
    String? error,
    AnimalModel? selectAnimal,
  }) {
    return AnimalState(
      listAnimal: listAnimal ?? this.listAnimal,
      status: status ?? this.status,
      error: error ?? this.error,
      selectAnimal: selectAnimal ?? this.selectAnimal,
    );
  }
}
