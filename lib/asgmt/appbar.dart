import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CustomAppBAr(),
  ));
}

class CustomAppBAr extends StatelessWidget {
  const CustomAppBAr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Page Title ',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_outlined,
            ),
          ),
        ],
        leading: const Icon(
          Icons.menu,
        ),
      ),
    );
  }
}
