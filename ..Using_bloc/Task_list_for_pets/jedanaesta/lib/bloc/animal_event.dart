// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'animal_bloc.dart';

@immutable
sealed class AnimalEvent {}

class LoadAnimalsEvent extends AnimalEvent {}

class AddAnimalEvent extends AnimalEvent {
  final AnimalModel addedAnimal;
  AddAnimalEvent({
    required this.addedAnimal,
  });
}

class SelectEvent extends AnimalEvent {
  final String id;
  SelectEvent({
    required this.id,
  });
}

class DeleteEvent extends AnimalEvent {
  final String id;
  DeleteEvent({
    required this.id,
  });
}

class UpdateNameEvent extends AnimalEvent {
  final String name;
  UpdateNameEvent({
    required this.name,
  });
}

class UpdateDescEvent extends AnimalEvent {
  final String desc;
  UpdateDescEvent({
    required this.desc,
  });
}

class SelectAnimalEvent extends AnimalEvent {
  final AnimalModel animal;
  SelectAnimalEvent({
    required this.animal,
  });
}

class SelectFeedEvent extends AnimalEvent {}

class SelectWaterEvent extends AnimalEvent {}
