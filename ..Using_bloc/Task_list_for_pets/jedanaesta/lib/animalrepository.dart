import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jedanaesta/models/animal_model.dart';

class AnimalRepository {
  final db = FirebaseFirestore.instance;
  Future<List<AnimalModel>> getAnimals() async {
    final an = await db.collection("animal").get();

    return an.docs
        .map((e) => AnimalModel.fromMap({...e.data(), "id": e.id}))
        .toList();
  }

  Future<String> addAnimal(AnimalModel animal) async {
    final a = await db.collection("animal").add(animal.toMap());
    return a.id;
  }

  Future<void> selectAnimal(String id, bool newState) async {
    await db
        .collection("animal")
        .doc(id)
        .set({"done": newState}, SetOptions(merge: true));
  }

  Future<void> deleteAnimal(String id) async {
    await db.collection("animal").doc(id).delete();
  }

  Future<void> updateName(AnimalModel ani) async {
    await db
        .collection("animal")
        .doc(ani.id)
        .set(ani.toMap(), SetOptions(merge: true));
  }

  Future<void> updateDesc(AnimalModel ani) async {
    await db
        .collection("animal")
        .doc(ani.id)
        .set(ani.toMap(), SetOptions(merge: true));
  }

  Future<void> selectFeed(String id, bool newState) async {
    await db
        .collection("animal")
        .doc(id)
        .set({"feed": newState}, SetOptions(merge: true));
  }

  Future<void> selectWater(String id, bool newState) async {
    await db
        .collection("animal")
        .doc(id)
        .set({"water": newState}, SetOptions(merge: true));
  }
}
