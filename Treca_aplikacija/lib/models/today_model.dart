import 'package:treca_aplikacija/models/ingredient_model.dart';

class TodayModel {
  String image;
  String name;
  String text;
  String money;
  String weekly;
  String category;
  String time;
  List<IngredientModel> listIng;
  TodayModel({
    required this.image,
    required this.name,
    required this.text,
    required this.money,
    required this.weekly,
    required this.category,
    required this.listIng,
    required this.time,
  });
}
