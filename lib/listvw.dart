import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Lst());
}
class Lst extends StatelessWidget {
  const Lst({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("listview"),
          ),
          backgroundColor:  Color.fromARGB(255, 254, 255, 251),
          body: 
          Container(
            
            child: ListView(
              children:  [
                const Center(
                  child: Text("list",
                  style: TextStyle(
                    fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
                  ),
                ),

                const ListTile(
                title: Text("2"),
                tileColor: Color.fromARGB(95, 176, 170, 170),
                leading: Icon(Icons.camera,color:Colors.blue),
                subtitle: Text("data"),
                trailing:Icon(Icons.arrow_circle_up),
                ),
                const Divider(height: 3),

                const ListTile(title: Text("3"),
                tileColor: Color.fromARGB(95, 176, 170, 170),
                leading: Icon(Icons.camera,color:Colors.blue),
                subtitle: Text("data"),
                trailing:Icon(Icons.arrow_circle_up),
                ),
                const Divider(height: 3),

                const ListTile(title: Text("4"),
                tileColor: Color.fromARGB(95, 176, 170, 170),
                leading: Icon(Icons.camera,color:Colors.blue),
                subtitle: Text("data"),
                trailing:Icon(Icons.arrow_circle_up),
                ),
                const Divider(height: 3),
                const ListTile(title: Text("5"),

                tileColor: Color.fromARGB(95, 176, 170, 170),
                leading: Icon(Icons.camera,color:Colors.blue),
                subtitle: Text("data"),
                trailing:Icon(Icons.arrow_circle_up),
                ),
                const Divider(height: 3),
                ListTile(title: const Text("6"),
                tileColor: const Color.fromARGB(95, 176, 170, 170),
                leading:
                CircleAvatar(
            child: Image.network("https://media-exp1.licdn.com/dms/image/C4E03AQEuWB6sfYFj_A/profile-displayphoto-shrink_800_800/0/1645875959385?e=1660176000&v=beta&t=OgMr0o-HmKDQErhlq2YV3OYd2_yTkq0cTgPFTk2j_cA")
            ),
                subtitle: Text("data"),
                trailing:Icon(Icons.arrow_circle_up),
                ),
                Divider(height: 3),
              ],
            ),
          ),
        ),      
    
    
    );
  }
}