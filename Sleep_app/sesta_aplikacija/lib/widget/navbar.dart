import 'package:flutter/material.dart';
import 'package:sesta_aplikacija/afsarpage.dart';
import 'package:sesta_aplikacija/homepage.dart';
import 'package:sesta_aplikacija/meditatepage.dart';
import 'package:sesta_aplikacija/musicpage.dart';
import 'package:sesta_aplikacija/sleeppage.dart';
import 'package:sesta_aplikacija/widget/bottomline.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int current_index = 0;
  final List<Widget> pages = [
    HomePage(),
    SleepPage(),
    MeditatePage(),
    MusicPage(),
    AfsarPage(),
  ];

  void OnTapped(int index) {
    setState(() {
      current_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[current_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 3, 23, 77),
        iconSize: 26,
        selectedIconTheme:
            IconThemeData(color: const Color.fromARGB(255, 252, 253, 253)),
        selectedItemColor: Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: Color.fromARGB(255, 124, 121, 121),
        currentIndex: current_index,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: OnTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 255, 94, 36),
            icon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: current_index == 0
                    ? const Color.fromARGB(255, 212, 226, 250)
                    : null,
              ),
              padding: EdgeInsets.all(5),
              child: ImageIcon(
                AssetImage("assets/home.png"),
                //size: 24,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: current_index == 1
                    ? const Color.fromARGB(255, 212, 226, 250)
                    : null,
              ),
              padding: EdgeInsets.all(5),
              child: ImageIcon(
                AssetImage("assets/sleep.png"),
                //size: 24,
              ),
            ),
            label: "Sleep",
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: current_index == 2
                    ? const Color.fromARGB(255, 212, 226, 250)
                    : null,
              ),
              padding: EdgeInsets.all(5),
              child: ImageIcon(
                AssetImage("assets/meditate.png"),
                //size: 24,
              ),
            ),
            label: "Meditate",
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: current_index == 3
                    ? const Color.fromARGB(255, 212, 226, 250)
                    : null,
              ),
              padding: EdgeInsets.all(5),
              child: ImageIcon(
                AssetImage("assets/music.png"),
                // size: 24,
              ),
            ),
            label: "Music",
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: current_index == 4
                    ? const Color.fromARGB(255, 212, 226, 250)
                    : null,
              ),
              padding: EdgeInsets.all(5),
              child: ImageIcon(
                AssetImage("assets/afsar.png"),
                // size: 24,
              ),
            ),
            label: "Afsar",
          ),
        ],
      ),
    );
  }
}
