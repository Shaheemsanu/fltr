import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp( Lst());
}
class Lst extends StatelessWidget {
   Lst({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
       
        appBar: AppBar(
          leading: Icon(Icons.contacts),
          title:  Text("CONTACTS"),
          ),
          backgroundColor:  Color.fromARGB(255, 234, 236, 230),
          body: 
           
             Padding(
               padding: const EdgeInsets.all(5.0),
               child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(3.0),color: Color.fromARGB(255, 255, 255, 255)),
                child: ListView(
                  children:  
                    [
                     Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black26
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child:  ListTile(
                  leading: Icon(Icons.search),
                  trailing:
                  Wrap(children: [
                    Icon(Icons.mic_none_sharp),
                    Icon(Icons.more_vert_rounded)
                  ],),
                   
                  title:
                  Text('Search contacts',style:TextStyle(color: Color.fromARGB(255, 134, 136, 138)) ),
                ),
            ),
                    
                    ListTile(leading: Text("A"),
                    tileColor:Colors.white
                    ),
                     Divider(height: 2,thickness: 1),
                   
                     ListTile(title: Text("ASIF K P"),
                    tileColor:Colors.white,
                    leading:
                    
                    CircleAvatar(
                backgroundImage: NetworkImage("https://media-exp1.licdn.com/dms/image/C4E03AQEuWB6sfYFj_A/profile-displayphoto-shrink_800_800/0/1645875959385?e=1660176000&v=beta&t=OgMr0o-HmKDQErhlq2YV3OYd2_yTkq0cTgPFTk2j_cA")
                ),
                         
                    subtitle: Text("data"),
                    trailing:Icon(Icons.call),
                    ),
                    Divider(height: 2,thickness: 1.2),
                     ListTile(title: Text("ASIF K P"),
                    tileColor:Colors.white,
                    leading:
                    
                    CircleAvatar(
                backgroundImage: NetworkImage("https://media-exp1.licdn.com/dms/image/C4E03AQEuWB6sfYFj_A/profile-displayphoto-shrink_800_800/0/1645875959385?e=1660176000&v=beta&t=OgMr0o-HmKDQErhlq2YV3OYd2_yTkq0cTgPFTk2j_cA")
                ),
                         
                    subtitle: Text("data"),
                    trailing:Icon(Icons.call),
                    ),
                    Divider(height: 2,thickness: 1)
                  ],
                ),
            ),
             ),
          
        ),      
    
    
    );
  }
}