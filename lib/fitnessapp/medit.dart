import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Meditern extends StatefulWidget {
  const Meditern({Key? key}) : super(key: key);

  @override
  State<Meditern> createState() => _MediternState();
}

class _MediternState extends State<Meditern> {
  @override
  Widget build(BuildContext context) {
    return (Container(
      padding: const EdgeInsets.all(30),
      height: 250,
      decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          )),
      child: Column(
        children: [
          Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      color: const Color.fromARGB(123, 113, 189, 251),
                      width: 3,
                      height: 50,
                    ),
                    Column(
                      children: [
                        const Text(
                          "Eaten",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Expanded(
                                      child: LiquidCircularProgressIndicator(
                                    valueColor: const AlwaysStoppedAnimation(
                                        Color.fromARGB(255, 66, 94, 255)),
                                    backgroundColor:
                                        const Color.fromARGB(31, 0, 0, 0),
                                  ))),
                              const Text(
                                "  1127",
                                style: TextStyle(fontSize: 18),
                              ),
                              const Text(
                                "  Kcal",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      color: const Color.fromARGB(185, 255, 152, 78),
                      width: 3,
                      height: 50,
                    ),
                    Column(
                      children: [
                        const Text(
                          "Burned",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Expanded(
                                      child: LiquidCircularProgressIndicator(
                                    value: 0.7,
                                    valueColor: const AlwaysStoppedAnimation(
                                        Color.fromARGB(255, 251, 113, 113)),
                                    backgroundColor:
                                        const Color.fromARGB(31, 0, 0, 0),
                                  ))),
                              const Text(
                                "  102",
                                style: TextStyle(fontSize: 18),
                              ),
                              const Text(
                                "  Kcal",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: CircularPercentIndicator(
                radius: 55.0,
                lineWidth: 13,
                animationDuration: 14,
                backgroundWidth: 3,
                backgroundColor: const Color.fromARGB(255, 143, 156, 255),
                animation: true,
                percent: 0.35,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "1200",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.indigo),
                    ),
                    Text("Kcal")
                  ],
                ),
                circularStrokeCap: CircularStrokeCap.round,
                rotateLinearGradient: true,
                linearGradient: const LinearGradient(colors: [
                  Color.fromARGB(255, 0, 38, 255),
                  Colors.blue,
                  Color.fromARGB(255, 128, 198, 255)
                ]),
                // progressColor: Colors.blue[700],
              ),
            ),
          ]),
          const Divider(
            thickness: 1.2,
            height: 24,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Carbs",
                    style: TextStyle(fontSize: 17),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                      height: 4,
                      width: 75,
                      child: Expanded(
                          child: LiquidLinearProgressIndicator(
                        value: 0.8,
                        backgroundColor:
                            const Color.fromARGB(255, 185, 195, 255),
                        valueColor: const AlwaysStoppedAnimation(
                            Color.fromARGB(255, 115, 136, 255)),
                      ))),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text("12g left", style: TextStyle(color: Colors.grey))
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Protein",
                    style: TextStyle(fontSize: 17),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                      height: 4,
                      width: 75,
                      child: Expanded(
                          child: LiquidLinearProgressIndicator(
                        value: 0.6,
                        backgroundColor:
                            const Color.fromARGB(255, 255, 207, 207),
                        valueColor: const AlwaysStoppedAnimation(
                            Color.fromARGB(255, 255, 115, 115)),
                      ))),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text("30g left", style: TextStyle(color: Colors.grey))
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Fat",
                    style: TextStyle(fontSize: 17),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                      height: 4,
                      width: 75,
                      child: Expanded(
                          child: LiquidLinearProgressIndicator(
                        value: 0.4,
                        backgroundColor:
                            const Color.fromARGB(255, 255, 251, 185),
                        valueColor: const AlwaysStoppedAnimation(
                            Color.fromARGB(255, 244, 212, 1)),
                      ))),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text("10g left", style: TextStyle(color: Colors.grey))
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
