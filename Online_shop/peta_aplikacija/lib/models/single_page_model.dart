import 'package:flutter/material.dart';

class SinglePageModel {
  String image;
  String des;
  double price;
  bool press;
  List<String> listSize;
  List<Color> listColors;
  double shipping;

  SinglePageModel(
      {required this.image,
      required this.des,
      required this.price,
      required this.press,
      required this.listSize,
      required this.listColors,
      required this.shipping});
}
