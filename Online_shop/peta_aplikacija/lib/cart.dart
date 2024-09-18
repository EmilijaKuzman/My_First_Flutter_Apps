import 'package:flutter/material.dart';
import 'package:peta_aplikacija/home.dart';
import 'package:peta_aplikacija/models/checkout_model.dart';
import 'package:peta_aplikacija/models/single_page_model.dart';
import 'package:peta_aplikacija/widget/single_cart.dart';

class Cart extends StatefulWidget {
  List<CheckModel> listCheck;
  Cart({super.key, required this.listCheck});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    double shipping = widget.listCheck
        .fold(0.00.roundToDouble(), (p, e) => p + e.item.shipping * e.kolicina);
    double total = widget.listCheck
        .fold(0.00.roundToDouble(), (p, e) => p + e.item.price * e.kolicina);
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 254, 214, 214),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Icon(
                          size: 30,
                          Icons.arrow_back_ios_new,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    Text(
                      "My Cart",
                      style: TextStyle(fontSize: 28, color: Colors.black),
                    ),
                    Image.asset(
                      height: 44,
                      width: 44,
                      "assets/Ellipse2.png",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Expanded(
                  flex: 6,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        ...widget.listCheck.map((e) => SingleCart(
                              page: e,
                              onTap: () {
                                if (e.kolicina != 1) {
                                  e.kolicina -= 1;
                                } else {
                                  widget.listCheck.remove(e);
                                }
                                setState(() {});
                              },
                            )),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total:",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Text(
                            "\$" + total.toStringAsFixed(2),
                            style: TextStyle(
                              fontSize: 18,
                              color: const Color.fromARGB(255, 121, 121, 121),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Shipping:",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Text(
                            "\$" + shipping.toStringAsFixed(2),
                            style: TextStyle(
                              fontSize: 18,
                              color: const Color.fromARGB(255, 121, 121, 121),
                            ),
                          ),
                        ],
                      ),
                      Divider(color: Colors.black),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Grand Total:",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Text(
                            "\$" + (total + shipping).toStringAsFixed(2),
                            style: TextStyle(
                              fontSize: 18,
                              color: const Color.fromARGB(255, 121, 121, 121),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 66,
                        width: 352,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(255, 233, 110, 110),
                        ),
                        child: Center(
                          child: Text(
                            "Checkout",
                            style: TextStyle(
                                fontSize: 24,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
