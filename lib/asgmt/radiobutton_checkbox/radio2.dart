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
  int radio = 0;

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
            RadioListTile(
              title: const Text("radio1"),
              value: 1,
              groupValue: radio,
              onChanged: (int? val) {
                setState(() {
                  radio = val!;
                });
              },
              tileColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              // activeColor: Colors.green,
              // subtitle: const Text("sub text"),
              // autofocus: true,

              // selectedTileColor: Colors.red,
              // contentPadding: const EdgeInsets.all(5),
              secondary: const Icon(Icons.accessibility_rounded),
            ),
            const SizedBox(
              height: 10,
            ),
            RadioListTile(
              title: const Text("radio2"),
              value: 2,
              groupValue: radio,
              onChanged: (int? veri) {
                setState(() {
                  radio = veri!;
                });
              },
              tileColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
      ),
    );
  }
}
