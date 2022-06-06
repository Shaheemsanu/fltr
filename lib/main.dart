import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch:Colors.orange),
      home:MyHomePage() ,
    )  ;
  }

}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        
        CircleAvatar(
          child: Image.network("https://media-exp1.licdn.com/dms/image/C4E03AQEuWB6sfYFj_A/profile-displayphoto-shrink_800_800/0/1645875959385?e=1660176000&v=beta&t=OgMr0o-HmKDQErhlq2YV3OYd2_yTkq0cTgPFTk2j_cA")
          ),

        title: const Text(
          "MyfirstApp",
          style: TextStyle(fontSize: 23,color: Colors.blue),
        ),
            ),
        // body: Center(
        //   child: Container(
        //     color: Colors.black,
        //     width: 300,
        //     height: 300,
        //     child: Image.network("https://media-exp1.licdn.com/dms/image/C4E03AQEuWB6sfYFj_A/profile-displayphoto-shrink_800_800/0/1645875959385?e=1660176000&v=beta&t=OgMr0o-HmKDQErhlq2YV3OYd2_yTkq0cTgPFTk2j_cA"),
        //   ),
        // ),
    );
  }
  
}