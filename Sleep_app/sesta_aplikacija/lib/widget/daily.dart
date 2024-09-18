import 'package:flutter/material.dart';

class Daily extends StatefulWidget {
  String text;
  String des;
  Color col;
  Daily({super.key, required this.text, required this.des, required this.col});

  @override
  State<Daily> createState() => _DailyState();
}

class _DailyState extends State<Daily> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: widget.col,
      ),
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.text,
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Text(
                        widget.des,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 200, 200, 200),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color.fromARGB(255, 255, 255, 255),
                    image: DecorationImage(
                      image: AssetImage("assets/playy.png"),
                    ),
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
