import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp( Lst2());
}
class Lst2 extends StatelessWidget {
  const Lst2({ Key? key }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    final  mylist=List.generate(50, (index) => 'Product $index');
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
      body:
      ListView.separated(
  itemCount: 25,
  itemBuilder: (BuildContext context, int index) {
    return ListTile(
      title: Text('item $index'),
    );
  },
  separatorBuilder: (BuildContext context, int index) { 
    return Divider(
    );
    }
),
      //  ListView.builder(
      //   itemCount: mylist.length,
      //   itemBuilder:  (context, index) {
      //   return ListTile(
      //     title: Text("${index} abcd"),
      //     leading: Icon(Icons.abc),
      //   );

      // }),
      
    ),
    );
     
  }
}