import 'package:flutter/material.dart';
import 'package:flutter_application_1/asgmt/login.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Mypg(),
  ));
}
class Mypg extends StatefulWidget {
  const Mypg({Key? key}) : super(key: key);

  @override
  State<Mypg> createState() => _MypgState();
}

class _MypgState extends State<Mypg> {
  @override
  Widget build(BuildContext context) {
    return(Scaffold(appBar: AppBar()
    ,
    body: Container(child: Text(" "),),));
  }
}
