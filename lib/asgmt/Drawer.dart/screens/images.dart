import 'package:flutter/material.dart';

class imgs extends StatelessWidget {
  const imgs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
            image: NetworkImage(
                "https://images.pexels.com/photos/1591447/pexels-photo-1591447.jpeg?auto=compress&cs=tinysrgb&w=400")),
      ),
    );
  }
}
