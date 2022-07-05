import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
        debugShowCheckedModeBanner: false);
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool ch1 = true;
  bool ch2 = false;
  bool ch3 = false;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('checkbox'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              // tileColor: Colors.grey,
              title: const Text("ITEM 1"),
              leading: Checkbox(
                value: ch1,
                onChanged: (bool? value) {
                  setState(() {
                    ch1 = value!;
                  });
                },
                checkColor: Colors.black,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23)),
            ),
            ListTile(
              // tileColor: Colors.grey,
              title: const Text("ITEM 2"),
              leading: Checkbox(
                value: ch2,
                onChanged: (bool? value) {
                  setState(() {
                    ch2 = value!;
                  });
                },
                checkColor: Colors.black,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23)),
            ),
            ListTile(
              title: const Text("ITEM 3"),
              leading: Checkbox(
                value: ch3,
                onChanged: (bool? val) {
                  setState(() {
                    ch3 = val!;
                  });
                },
                //mouseCursor: SystemMouseCursors.click,
                // toggleable: true,
                activeColor: Colors.black,
                // fillColor: MaterialStateProperty.resolveWith<Color>((states) {
                //   if (states.contains(MaterialState.selected)) {
                //     return Colors.lightGreen;
                //   }
                //   return Colors.yellowAccent;
                // }),
                // focusColor: Colors.black,
                // hoverColor: Colors.orange,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                splashRadius: 20,
                autofocus: true,
                overlayColor:
                    MaterialStateProperty.resolveWith<Color>((states) {
                  if (states.contains(MaterialState.selected)) {
                    return Colors.green;
                  }
                  return Colors.orange;
                }),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (ch1 == true) {
                      print("ITEM 1");
                    }
                    if (ch2 == true) {
                      print("ITEM 2");
                    }
                    if (ch3 == true) {
                      print("ITEM 3");
                    }
                  });
                },
                child: const Text("submit"))
          ],
        ),
      );
}
