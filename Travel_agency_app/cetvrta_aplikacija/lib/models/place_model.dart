import 'package:cetvrta_aplikacija/facilities.dart';
import 'package:cetvrta_aplikacija/models/facilities_model.dart';

class PlaceModel {
  String nameP;
  double numP;
  String imageP;
  int rew;
  String des;
  int price;
  List<FacilitiesModel> listFac;
  String period;
  String cat;
  PlaceModel(
      {required this.nameP,
      required this.numP,
      required this.imageP,
      required this.rew,
      required this.des,
      required this.price,
      required this.listFac,
      required this.period,
      required this.cat});
}
