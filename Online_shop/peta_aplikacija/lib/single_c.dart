import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:peta_aplikacija/cart.dart';
import 'package:peta_aplikacija/models/checkout_model.dart';
import 'package:peta_aplikacija/models/single_page_model.dart';
import 'package:peta_aplikacija/widget/colorss.dart';
import 'package:peta_aplikacija/widget/header.dart';
import 'package:peta_aplikacija/widget/single_cart.dart';
import 'package:peta_aplikacija/widget/sizee.dart';

class SingleC extends StatefulWidget {
  SinglePageModel page;
  List<CheckModel> listCheck;
  VoidCallback onClick;
  SingleC(
      {super.key,
      required this.page,
      required this.listCheck,
      required this.onClick});

  @override
  State<SingleC> createState() => _SingleCState();
}

class _SingleCState extends State<SingleC> {
  void initState() {
    // TODO: implement initState

    l = widget.page.listColors.first;
    p = widget.page.listSize.first;
    super.initState();
  }

  late String p;
  late Color l;
  List<SingleCart> listCart = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 254, 214, 214),
        child: Column(
          children: [
            Header(),
            Image.asset(
              height: 420,
              width: 420,
              widget.page.image,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.page.des,
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 68, 68, 68)),
                  ),
                  Text(
                    "\$" + widget.page.price.toString(),
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 68, 68, 68)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Size",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 68, 68, 68)),
                  ),
                  Row(
                    children: [
                      ...widget.page.listSize.map((e) => Sizee(
                            size: e,
                            selected: p == e,
                            onTap: () {
                              setState(() {
                                p = e;
                              });
                            },
                          )),
                    ],
                  ),
                  Text(
                    "Colors",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 68, 68, 68)),
                  ),
                  Row(
                    children: [
                      ...widget.page.listColors.map((e) => Colorss(
                            color: e,
                            selected: l == e,
                            onTap: () {
                              setState(() {
                                l = e;
                              });
                            },
                          )),
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                inspect(widget.listCheck);
                final m = widget.listCheck.where((element) =>
                    element.item == widget.page &&
                    element.colorItem == l &&
                    element.sizeItem == p);
                if (m.isNotEmpty) {
                  m.first.kolicina += 1;
                } else {
                  widget.listCheck.add(
                      CheckModel(item: widget.page, sizeItem: p, colorItem: l));
                }
                widget.onClick();
              },
              child: Container(
                height: 66,
                width: 352,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(255, 233, 110, 110),
                ),
                child: Center(
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
