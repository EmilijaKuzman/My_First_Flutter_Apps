// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:deveta/models/category_model.dart';

class CategoryL extends StatelessWidget {
  CategoryModel category;
  bool select;
  VoidCallback click;
  CategoryL({
    Key? key,
    required this.category,
    required this.select,
    required this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: click,
      child: Container(
        margin: EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: select
              ? Color.fromARGB(255, 253, 192, 9)
              : Color.fromARGB(255, 253, 229, 156),
        ),
        child: Center(
          child: Text(category.category.toString()),
        ),
      ),
    );
  }
}
