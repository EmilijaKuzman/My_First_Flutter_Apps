import 'package:bloc/bloc.dart';
import 'package:jedanaesta/animalrepository.dart';
import 'package:jedanaesta/models/animal_model.dart';
import 'package:meta/meta.dart';

part 'animal_event.dart';
part 'animal_state.dart';

class AnimalBloc extends Bloc<AnimalEvent, AnimalState> {
  final AnimalRepository animalRepo;
  AnimalBloc({required this.animalRepo})
      : super(AnimalState(status: Status.initial)) {
    on<LoadAnimalsEvent>((event, emit) async {
      // TODO: implement event handler
      try {
        emit(state.copyWith(status: Status.load));
        final listAn = [...await animalRepo.getAnimals()];
        emit(state.copyWith(status: Status.loaded, listAnimal: listAn));
      } catch (e) {
        emit(state.copyWith(status: Status.error, error: e.toString()));
      }
    });
    on<AddAnimalEvent>((event, emit) async {
      // TODO: implement event handler
      try {
        emit(state.copyWith(status: Status.load));
        String id = await animalRepo.addAnimal(event.addedAnimal);

        emit(state.copyWith(status: Status.loaded, listAnimal: [
          ...state.listAnimal,
          event.addedAnimal.copyWith(id: id)
        ]));
      } catch (e) {
        emit(state.copyWith(status: Status.error, error: e.toString()));
      }
    });
    on<DeleteEvent>((event, emit) async {
      // TODO: implement event handler
      try {
        await animalRepo.deleteAnimal(event.id);
        final l = [...state.listAnimal];
        l.removeWhere((e) => e.id == event.id);

        emit(state.copyWith(status: Status.loaded, listAnimal: l));
      } catch (e) {
        emit(state.copyWith(status: Status.error, error: e.toString()));
      }
    });
    on<SelectEvent>((event, emit) async {
      // TODO: implement event handler
      try {
        final l =
            state.listAnimal.firstWhere((element) => element.id == event.id);
        animalRepo.selectAnimal(event.id, !l.done);
        emit(state.copyWith(
            listAnimal: state.listAnimal
                .map((e) => e.id == event.id ? e.copyWith(done: !e.done) : e)
                .toList()));
      } catch (e) {
        emit(state.copyWith(status: Status.error, error: e.toString()));
      }
    });
    on<UpdateNameEvent>((event, emit) async {
      // TODO: implement event handler
      try {
        emit(state.copyWith(status: Status.load));
        final animal = state.selectAnimal!.copyWith(name: event.name);
        await animalRepo.updateName(animal);

        emit(state
            .copyWith(status: Status.loaded, selectAnimal: animal, listAnimal: [
          ...state.listAnimal
              .map((e) => e.id == animal.id ? animal : e)
              .toList(),
        ]));
      } catch (e) {
        emit(state.copyWith(status: Status.error, error: e.toString()));
      }
    });
    on<UpdateDescEvent>((event, emit) async {
      // TODO: implement event handler
      try {
        emit(state.copyWith(status: Status.load));
        final animal = state.selectAnimal!.copyWith(desc: event.desc);
        await animalRepo.updateDesc(animal);

        emit(state
            .copyWith(status: Status.loaded, selectAnimal: animal, listAnimal: [
          ...state.listAnimal
              .map((e) => e.id == animal.id ? animal : e)
              .toList(),
        ]));
      } catch (e) {
        emit(state.copyWith(status: Status.error, error: e.toString()));
      }
    });
    on<SelectAnimalEvent>((event, emit) async {
      // TODO: implement event handler
      emit(state.copyWith(selectAnimal: event.animal));
    });

    on<SelectFeedEvent>((event, emit) async {
      // TODO: implement event handler
      try {
        final k = state.selectAnimal!.copyWith(feed: !state.selectAnimal!.feed);
        animalRepo.selectFeed(state.selectAnimal!.id, k.feed);
        emit(
            state.copyWith(status: Status.loaded, selectAnimal: k, listAnimal: [
          ...state.listAnimal.map((e) => e.id == k.id ? k : e).toList(),
        ]));
      } catch (e) {
        emit(state.copyWith(status: Status.error, error: e.toString()));
      }
    });

    on<SelectWaterEvent>((event, emit) async {
      // TODO: implement event handler
      try {
        final a =
            state.selectAnimal!.copyWith(water: !state.selectAnimal!.water);
        animalRepo.selectWater(state.selectAnimal!.id, a.water);
        emit(state.copyWith(
            status: Status.loaded,
            selectAnimal: a,
            listAnimal: [
              ...state.listAnimal.map((e) => e.id == a.id ? a : e)
            ]));
      } catch (e) {
        emit(state.copyWith(status: Status.error, error: e.toString()));
      }
    });
  }
}
