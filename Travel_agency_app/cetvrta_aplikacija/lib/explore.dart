import 'package:cetvrta_aplikacija/models/facilities_model.dart';
import 'package:cetvrta_aplikacija/models/place_model.dart';
import 'package:cetvrta_aplikacija/models/type_model.dart';
import 'package:cetvrta_aplikacija/place.dart';
import 'package:cetvrta_aplikacija/recommend.dart';
import 'package:cetvrta_aplikacija/type.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<TypeModel> listType = [
    TypeModel(name: "Location", category: "1"),
    TypeModel(name: "Hotels", category: "2"),
    TypeModel(name: "Food", category: "3"),
    TypeModel(name: "Adventure", category: "4"),
    TypeModel(name: "Activity", category: "5"),
  ];

  List<PlaceModel> listRec = [
    PlaceModel(
      nameP: "Ally",
      numP: 2,
      imageP: "assets/Rectangle_992.png",
      rew: 312,
      des:
          "Michael Terence Aspel OBE (born 12 January 1933) is a retired English television presenter and newsreader. He hosted programmes such as Crackerjack, Ask Aspel, Aspel & Company, Give Us a Clue, This is Your Life, Strange but True? and Antiques Roadshow. ",
      price: 120,
      listFac: [
        FacilitiesModel(iconF: "assets/wifi.png", desc: "1 Heater"),
        FacilitiesModel(iconF: "assets/Frame.png", desc: "Dinner"),
        FacilitiesModel(iconF: "assets/bathtub.png", desc: "1 Tube"),
        FacilitiesModel(iconF: "assets/pool.png", desc: "1 Pool"),
        FacilitiesModel(iconF: "assets/parking.png", desc: "1 Parking"),
      ],
      period: "2N/3D",
      cat: "1",
    ),
    PlaceModel(
      nameP: "Place",
      numP: 2,
      imageP: "assets/Rectangle_995.png",
      rew: 312,
      des:
          "Michael Terence Aspel OBE (born 12 January 1933) is a retired English television presenter and newsreader. He hosted programmes such as Crackerjack, Ask Aspel, Aspel & Company, Give Us a Clue, This is Your Life, Strange but True? and Antiques Roadshow. ",
      price: 120,
      listFac: [
        FacilitiesModel(iconF: "assets/wifi.png", desc: "1 Heater"),
        FacilitiesModel(iconF: "assets/Frame.png", desc: "Dinner"),
        FacilitiesModel(iconF: "assets/bathtub.png", desc: "1 Tube"),
        FacilitiesModel(iconF: "assets/pool.png", desc: "1 Pool"),
        FacilitiesModel(iconF: "assets/parking.png", desc: "1 Parking"),
      ],
      period: "5N/6D",
      cat: "1",
    ),
    PlaceModel(
      nameP: "Solun",
      numP: 5,
      imageP: "assets/solun.jpg",
      rew: 500,
      des:
          "Spent nearly five years in Chard, Somerset. He attended Emanuel School after passing his eleven-plus in 1944 and served as.",
      price: 120,
      listFac: [
        FacilitiesModel(iconF: "assets/wifi.png", desc: "1 Heater"),
        FacilitiesModel(iconF: "assets/Frame.png", desc: "1 Heater"),
      ],
      period: "1N/3D",
      cat: "2",
    ),
    PlaceModel(
      nameP: "New York",
      numP: 5,
      imageP: "assets/new.webp",
      rew: 500,
      des:
          "He was evacuated from the area and spent nearly five years in Chard, Somerset. He attended Emanuel School after passing his eleven-plus in 1944 and served as.",
      price: 120,
      listFac: [
        FacilitiesModel(iconF: "assets/wifi.png", desc: "1 Heater"),
        FacilitiesModel(iconF: "assets/Frame.png", desc: "1 Heater"),
      ],
      period: "2N/5D",
      cat: "1",
    ),
  ];
  List<PlaceModel> listPlace = [
    PlaceModel(
      nameP: "Ally Place",
      numP: 2,
      imageP: "assets/Rectangle992.png",
      rew: 312,
      des:
          "Michael Terence Aspel OBE (born 12 January 1933) is a retired English television presenter and newsreader. He hosted programmes such as Crackerjack, Ask Aspel, Aspel & Company, Give Us a Clue, This is Your Life, Strange but True? and Antiques Roadshow. ",
      price: 120,
      listFac: [
        FacilitiesModel(iconF: "assets/wifi.png", desc: "1 Heater"),
        FacilitiesModel(iconF: "assets/Frame.png", desc: "Dinner"),
        FacilitiesModel(iconF: "assets/bathtub.png", desc: "1 Tube"),
        FacilitiesModel(iconF: "assets/pool.png", desc: "1 Pool"),
        FacilitiesModel(iconF: "assets/parking.png", desc: "1 Parking"),
      ],
      period: "8N/10D",
      cat: "2",
    ),
    PlaceModel(
      nameP: "Coeurdes",
      numP: 5,
      imageP: "assets/Rectangle994.png",
      rew: 500,
      des:
          "Aspel was born on 12 January 1933 in Battersea in London. During the Second World War, he was evacuated from the area and spent nearly five years in Chard, Somerset. He attended Emanuel School after passing his eleven-plus in 1944 and served as.",
      price: 120,
      listFac: [
        FacilitiesModel(iconF: "assets/wifi.png", desc: "1 Heater"),
        FacilitiesModel(iconF: "assets/Frame.png", desc: "1 Heater"),
      ],
      period: "4N/6D",
      cat: "4",
    ),
    PlaceModel(
      nameP: "Alpes",
      numP: 28,
      imageP: "assets/Rectangle992.png",
      rew: 100,
      des:
          "Aspel worked as a drainpipe-layer and gardener and sold advertising space for the Western Mail newspaper in Cardiff. He worked as a teaboy at William Collins publishers in London and then entered National Service. He took up a job at the David Morgan department.",
      price: 120,
      listFac: [
        FacilitiesModel(iconF: "assets/wifi.png", desc: "1 Heater"),
        FacilitiesModel(iconF: "assets/Frame.png", desc: "1 Heater"),
      ],
      period: "8N/15D",
      cat: "1",
    ),
    PlaceModel(
      nameP: "New",
      numP: 5,
      imageP: "assets/york.webp",
      rew: 500,
      des: "Passing his eleven-plus in 1944 and served as.",
      price: 120,
      listFac: [
        FacilitiesModel(iconF: "assets/wifi.png", desc: "1 Heater"),
        FacilitiesModel(iconF: "assets/Frame.png", desc: "1 Heater"),
      ],
      period: "2N/6D",
      cat: "1",
    ),
    PlaceModel(
      nameP: "New",
      numP: 5,
      imageP: "assets/york.webp",
      rew: 500,
      des: "Passing his eleven-plus in 1944 and served as.",
      price: 120,
      listFac: [
        FacilitiesModel(iconF: "assets/wifi.png", desc: "1 Heater"),
        FacilitiesModel(iconF: "assets/Frame.png", desc: "1 Heater"),
      ],
      period: "2N/6D",
      cat: "3",
    ),
    PlaceModel(
      nameP: "Solun",
      numP: 5,
      imageP: "assets/solun.jpg",
      rew: 500,
      des:
          "Spent nearly five years in Chard, Somerset. He attended Emanuel School after passing his eleven-plus in 1944 and served as.",
      price: 120,
      listFac: [
        FacilitiesModel(iconF: "assets/wifi.png", desc: "1 Heater"),
        FacilitiesModel(iconF: "assets/Frame.png", desc: "1 Heater"),
      ],
      period: "1N/3D",
      cat: "5",
    ),
    PlaceModel(
      nameP: "New York",
      numP: 5,
      imageP: "assets/new.webp",
      rew: 500,
      des:
          "He was evacuated from the area and spent nearly five years in Chard, Somerset. He attended Emanuel School after passing his eleven-plus in 1944 and served as.",
      price: 120,
      listFac: [
        FacilitiesModel(iconF: "assets/wifi.png", desc: "1 Heater"),
        FacilitiesModel(iconF: "assets/Frame.png", desc: "1 Heater"),
      ],
      period: "2N/5D",
      cat: "3",
    ),
    PlaceModel(
      nameP: "Solun",
      numP: 5,
      imageP: "assets/solun.jpg",
      rew: 500,
      des:
          "Spent nearly five years in Chard, Somerset. He attended Emanuel School after passing his eleven-plus in 1944 and served as.",
      price: 120,
      listFac: [
        FacilitiesModel(iconF: "assets/wifi.png", desc: "1 Heater"),
        FacilitiesModel(iconF: "assets/Frame.png", desc: "1 Heater"),
      ],
      period: "1N/3D",
      cat: "1",
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    tt = listType.first;
    super.initState();
  }

  late TypeModel tt;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(75, 88, 155, 255),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Explore",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.add_location_sharp,
                          size: 14,
                          color: Color.fromARGB(255, 23, 111, 242),
                        ),
                        Text(
                          "Aspen,USA",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        Icon(
                          Icons.expand_more,
                          size: 14,
                          color: Color.fromARGB(255, 23, 111, 242),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Aspen",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 32, color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color.fromARGB(255, 243, 248, 254),
                  ),
                  width: double.infinity,
                  height: 52,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.find_in_page_outlined,
                            color: Color.fromARGB(255, 196, 207, 219),
                          ),
                          Text(
                            "Find things to do",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Ariel',
                              color: Color.fromARGB(255, 196, 207, 219),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: listType
                      .map(
                        (e) => Type(
                          type: e,
                          select: tt == e,
                          onTap: () {
                            setState(() {
                              tt = e;
                            });
                          },
                        ),
                      )
                      .toList(),
                  //listType.map((e) => Type(type: e)).toList(), //greskaaaa
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Ariel',
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 23, 111, 242),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: listPlace
                        .where((element) => element.cat == tt.category)
                        .map((e) => Place(
                              place: e,
                            ))
                        .toList(),
                    //...listPlace.map((e) => Place(place: e)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "Recommended",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Ariel',
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: listRec.map((e) => Recommend(place: e)).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
