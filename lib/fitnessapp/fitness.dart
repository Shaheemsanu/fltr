import 'package:flutter/material.dart';
import 'package:flutter_application_1/fitnessapp/medit.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Fitness(),
  ));
}

class Fitness extends StatefulWidget {
  const Fitness({Key? key}) : super(key: key);

  @override
  State<Fitness> createState() => _FitnessState();
}

class _FitnessState extends State<Fitness> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: const Color.fromARGB(255, 222, 222, 222),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 222, 222),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
        elevation: 0,
        title: const Text(
          "My Diary",
        ),
        actions: [
          Container(
              alignment: Alignment.center,
              child: const Text("date     ",
                  style: TextStyle(color: Colors.black)))
        ],
      ),
      body: CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
            child: Row(
              children: const [
                Text(
                  "Mediterranean diet",
                ),
                Spacer(),
                Text("Details ", style: TextStyle(color: Colors.indigo)),
                Icon(Icons.arrow_forward_rounded, color: Colors.black),
              ],
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(left: 25, right: 25), child: Meditern()),
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
            child: Row(
              children: const [
                Text(
                  "Meals today",
                  textAlign: TextAlign.left,
                ),
                Spacer(),
                Text("Customize ", style: TextStyle(color: Colors.indigo)),
                Icon(Icons.arrow_forward_rounded, color: Colors.black),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: SizedBox(
                height: 200,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 100,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(161, 255, 133, 119),
                                Color.fromARGB(168, 255, 85, 0),
                              ],
                            ),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            )),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 150,
                        width: 100,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(107, 104, 96, 255),
                                Color.fromARGB(133, 2, 2, 254),
                              ],
                            ),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            )),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 150,
                        width: 100,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(144, 255, 89, 89),
                                Color.fromARGB(171, 255, 0, 0),
                              ],
                            ),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            )),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 150,
                        width: 100,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(183, 255, 255, 90),
                                Color.fromARGB(255, 251, 255, 0),
                              ],
                            ),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            )),
                      ),
                    ],
                  ),
                )),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
            child: Row(
              children: const [
                Text(
                  "Body measurement",
                  textAlign: TextAlign.left,
                ),
                Spacer(),
                Text("Today ", style: TextStyle(color: Colors.indigo)),
                Icon(Icons.arrow_forward_rounded, color: Colors.black),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  )),
              height: 150,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
            child: Row(
              children: const [
                Text(
                  "Water",
                  textAlign: TextAlign.left,
                ),
                Spacer(),
                Text("Aqua SmartBottle ",
                    style: TextStyle(color: Colors.indigo)),
                Icon(Icons.arrow_forward_rounded, color: Colors.black),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  )),
              height: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(90, 33, 149, 243),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 50,
            ),
          ),
        ]))
      ]),
    ));
  }
}
