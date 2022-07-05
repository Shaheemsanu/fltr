import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool ch1 = false;
  bool ch2 = false;
  bool ch3 = false;
  bool ch4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              title: const Text("text1"),
              value: ch1,

              onChanged: (bool? val) {
                setState(() {
                  ch1 = val!;
                });
              },
              tileColor: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              // activeColor: Colors.green,
              subtitle: const Text("sub text"),
              // autofocus: true,

              //selectedTileColor: Colors.red,
              // contentPadding: const EdgeInsets.all(5),
              secondary: const Icon(Icons.accessibility_rounded),
            ),
            const SizedBox(
              height: 10,
            ),
            CheckboxListTile(
              title: const Text("text2"),
              value: ch2,
              onChanged: (bool? val) {
                setState(() {
                  ch2 = val!;
                });
              },
              tileColor: Colors.blue[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
      ),
    );
  }
}
