// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/MyHomepage.dart';
// import 'package:flutter_application_1/splashsrcn.dart';
// import 'package:splashscreen/splashscreen.dart';

// void main(List<String> args) {
//   runApp(MaterialApp(
//     home: SplashScn(),
//   )
//   );
// }
import 'package:flutter/material.dart';
import 'package:flutter_application_1/splashsrcn.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScn extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>SplashScreenState();
  
}

class SplashScreenState extends State{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(
        seconds: 5,
        image: Image.asset("assets/target.png"),
        navigateAfterSeconds: pagesrcn() ,
      ),
      
    );
   
  }
}
class pagesrcn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
    );
  }

}