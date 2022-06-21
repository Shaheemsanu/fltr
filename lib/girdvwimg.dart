import 'package:flutter/material.dart';

class IconGridView extends StatelessWidget {
  IconGridView({Key? key}) : super(key: key);
  final List titles = [
    'My Profile',
    'Book a Cab',
    'Booking Schedule',
    'Track Your Cab',
    'Help & Feedback',
    'Call to transport'
  ];
  final List icons = [
    Icons.verified_user,
    Icons.replay,
    Icons.ac_unit,
    Icons.center_focus_strong_sharp,
    Icons.feedback,
    Icons.call,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Menu',
        ),
        centerTitle: true,
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(titles.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(color: Colors.black45, blurRadius: 10)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      icons[index],
                      color: Colors.yellow,
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(titles[index])
                ],
              ),
            );
          })),
    );
  }
}
