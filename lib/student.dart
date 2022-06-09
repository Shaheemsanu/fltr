import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(stdapp());
}
class stdapp extends StatelessWidget {
  const stdapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title:          
        //   Text("STUDENTS") ,
        // ),
      body: stdnttb(),

      ),
      
    );
  }

}class stdnttb extends StatelessWidget {
  const stdnttb({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text("STUDENTS"),
          // SizedBox(height: 10),
          
          Divider(height: 10,color: Colors.transparent),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
              
              Text("data"),
              Text("data"),
              Text("data"),
            ],
          ),
          Divider(height: 10,
          thickness: 1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
              
              Text("data"),
              Text("data"),
              Text("data"),
            ],
          ),
          Divider(height: 10,
          thickness: 1,),
          Row(  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("data"),
              Text("data"),
              Text("data"),
            ],
          ),
            Divider(height: 10,
          thickness: 1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
              
              Text("data"),
              Text("data"),
              Text("data"),
            ],
          ),
           Divider(
          thickness: 1,),
        ],
        
      ),
    );
  }
}