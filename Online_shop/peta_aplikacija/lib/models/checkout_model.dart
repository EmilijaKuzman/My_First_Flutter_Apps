import 'package:flutter/material.dart';
import 'package:peta_aplikacija/models/single_page_model.dart';

class CheckModel {
  SinglePageModel item;
  String sizeItem;
  Color colorItem;
  int kolicina;

  CheckModel(
      {required this.item,
      required this.sizeItem,
      required this.colorItem,
      this.kolicina = 1});
}
