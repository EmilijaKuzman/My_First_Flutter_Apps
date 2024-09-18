import 'package:flutter/material.dart';
import 'package:peta_aplikacija/models/checkout_model.dart';
import 'package:peta_aplikacija/models/single_page_model.dart';
import 'package:peta_aplikacija/widget/colorss.dart';
import 'package:peta_aplikacija/widget/sizee.dart';

class SingleCart extends StatelessWidget {
  CheckModel page;
  VoidCallback onTap;

  SingleCart({super.key, required this.page, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 125,
                      width: 95,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage(page.item.image),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                page.item.des,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                              Text(
                                "\$" + page.item.price.toString(),
                                style: TextStyle(
                                  fontSize: 18,
                                  color:
                                      const Color.fromARGB(255, 121, 121, 121),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Colorss(color: page.colorItem),
                            Sizee(
                              size: page.sizeItem,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      page.kolicina.toString(),
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 121, 121, 121),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Icon(
                    size: 30,
                    Icons.delete_forever_outlined,
                    color: Color.fromARGB(246, 246, 140, 181),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
