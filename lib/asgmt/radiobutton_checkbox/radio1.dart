import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';

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
  int _singleValue = 0;
  String _value = " ";

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('radiobuuton'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              // tileColor: Colors.grey,
              title: const Text("male"),
              leading: Radio(
                value: "male",
                groupValue: _value,
                onChanged: (String? val) {
                  setState(() {
                    _value = val!;
                    print(val);
                  });
                },

                // mouseCursor: SystemMouseCursors.cell,
                // toggleable: true,
                activeColor: Colors.black,
                fillColor: MaterialStateProperty.resolveWith<Color>((states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.lightGreen;
                  }
                  return Colors.yellowAccent;
                }),
                focusColor: Colors.black,
                hoverColor: Colors.orange,
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                splashRadius: 20,
                // autofocus: true,
                // overlayColor:
                //     MaterialStateProperty.resolveWith<Color>((states) {
                //   if (states.contains(MaterialState.hovered)) {
                //     return Colors.green;
                //   }
                //   return Colors.orange;
                // }),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23)),
            ),
            ListTile(
              title: const Text("data"),
              leading: Radio(
                  value: "female",
                  groupValue: _value,
                  onChanged: (String? val) {
                    setState(() {
                      _value = val!;
                    });
                  }),
            ),
            RadioButton(
              description: "Text 1 ",
              value: 1,
              groupValue: _singleValue,
              onChanged: (int? val) => setState(
                () => _singleValue = val!,
              ),
              //   activeColor: Colors.red,
              //   textStyle: const TextStyle(
              //       fontSize: 30, fontWeight: FontWeight.w600, color: Colors.red),
            ),
            RadioButton(
              description: "Text 2",
              value: 2,
              groupValue: _singleValue,
              onChanged: (int? val) => setState(
                () => _singleValue = val!,
              ),
              // textPosition: RadioButtonTextPosition.left,
            ),
          ],
        ),
      );
}
