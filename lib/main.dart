import 'package:flutter/material.dart';
import 'package:flutter_application_1/girdvwimg.dart';

void main(List<String> args) {
  runApp(FstApp());
}

class FstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IconGridView(),
    );
  }
}
