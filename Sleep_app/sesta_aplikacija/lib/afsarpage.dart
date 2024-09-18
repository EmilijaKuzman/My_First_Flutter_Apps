import 'package:flutter/material.dart';

class AfsarPage extends StatefulWidget {
  const AfsarPage({super.key});

  @override
  State<AfsarPage> createState() => _AfsarPageState();
}

class _AfsarPageState extends State<AfsarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 3, 23, 77),
            image: DecorationImage(
                image: AssetImage("assets/line.png"), fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              Container(
                height: 250,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(150),
                              bottomRight: Radius.circular(150)),
                          color: Color.fromARGB(255, 103, 108, 155),
                        ),
                        height: 200,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      child: Text(
                        "- Profile -",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: const Color.fromARGB(255, 255, 236, 204),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Color.fromARGB(255, 195, 195, 195),
                        ),
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/afsar.png",
                          height: 50,
                          width: 50,
                          color: Color.fromARGB(255, 103, 108, 155),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color:
                      const Color.fromARGB(255, 103, 108, 155).withOpacity(0.5),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Image.asset(
                              "assets/afsar.png",
                              height: 30,
                              width: 30,
                              color: Color.fromARGB(255, 174, 181, 244),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              "Ava Avetisyan",
                              style: TextStyle(
                                fontSize: 21,
                                color: Color.fromARGB(255, 241, 236, 236),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Color.fromARGB(255, 103, 108, 155),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Image.asset(
                              "assets/bir.png",
                              height: 30,
                              width: 30,
                              color: Color.fromARGB(255, 174, 181, 244),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              "Birthday",
                              style: TextStyle(
                                fontSize: 21,
                                color: Color.fromARGB(255, 241, 236, 236),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Color.fromARGB(255, 103, 108, 155),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Image.asset(
                              "assets/mob.png",
                              height: 30,
                              width: 30,
                              color: Color.fromARGB(255, 174, 181, 244),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              "8181234567",
                              style: TextStyle(
                                fontSize: 21,
                                color: Color.fromARGB(255, 241, 236, 236),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Color.fromARGB(255, 103, 108, 155),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Image.asset(
                              "assets/maill.png",
                              height: 30,
                              width: 30,
                              color: Color.fromARGB(255, 174, 181, 244),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              "info@gmail.com",
                              style: TextStyle(
                                fontSize: 21,
                                color: Color.fromARGB(255, 241, 236, 236),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Color.fromARGB(255, 103, 108, 155),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Image.asset(
                              "assets/pass.png",
                              height: 30,
                              width: 30,
                              color: Color.fromARGB(255, 174, 181, 244),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              "Password",
                              style: TextStyle(
                                fontSize: 21,
                                color: Color.fromARGB(255, 241, 236, 236),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                height: 63,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(38)),
                  color: Color.fromARGB(255, 142, 151, 253),
                ),
                child: Center(
                  child: Text(
                    "Edit",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: const Color.fromARGB(255, 255, 236, 204),
                    ),
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
