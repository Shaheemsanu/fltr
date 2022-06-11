
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp( const Lst());
}
class Lst extends StatelessWidget {
   const Lst({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
       
        appBar: AppBar(
          leading: const Icon(Icons.contacts),
          title:  const Text("CONTACTS"),
          ),
          backgroundColor:  const Color.fromARGB(255, 234, 236, 230),
          body: 
           
             Padding(
               padding: const EdgeInsets.all(5.0),
               child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(3.0),color: const Color.fromARGB(255, 255, 255, 255)),
                child: ListView(
                  children:  
                    [
                     Card(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Colors.black26
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child:  ListTile(
                  leading: const Icon(Icons.search),
                  trailing:
                  Wrap(children: const [
                    Icon(Icons.mic_none_sharp),
                    Icon(Icons.more_vert_rounded)
                  ],),
                   
                  title:
                  const Text('Search contacts',style:TextStyle(color: Color.fromARGB(255, 134, 136, 138)) ),
                ),
            ),
                    
                    const ListTile(leading: Text("A"),
                    tileColor:Colors.white
                    ),
                     const Divider(height: 2,thickness: 1),
                   
                     const ListTile(title: Text("ASIF K P"),
                    tileColor:Colors.white,
                    leading:
                    
                    CircleAvatar(
                backgroundImage: NetworkImage("https://media-exp1.licdn.com/dms/image/C4E03AQEuWB6sfYFj_A/profile-displayphoto-shrink_800_800/0/1645875959385?e=1660176000&v=beta&t=OgMr0o-HmKDQErhlq2YV3OYd2_yTkq0cTgPFTk2j_cA")
                ),
                         
                    subtitle: Text("data"),
                    trailing:Icon(Icons.call),
                    ),
                    const Divider(height: 2,thickness: 1.2),
                     const ListTile(title: Text("ASIF K P"),
                    tileColor:Colors.white,
                    leading:
                    
                    CircleAvatar(
                backgroundImage: NetworkImage("https://media-exp1.licdn.com/dms/image/C4E03AQEuWB6sfYFj_A/profile-displayphoto-shrink_800_800/0/1645875959385?e=1660176000&v=beta&t=OgMr0o-HmKDQErhlq2YV3OYd2_yTkq0cTgPFTk2j_cA")
                ),
                         
                    subtitle: Text("data"),
                    trailing:Icon(Icons.call),
                    ),
                    const Divider(height: 2,thickness: 1)
                  ],
                ),
            ),
             ),
          
        ),      
    
    
    );
  }
}