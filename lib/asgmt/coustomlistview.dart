import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp( MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('Cities around world',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body:  Padding(
               padding: const EdgeInsets.all(5.0),
               child: ListView(
                 children: [
                  Card(
                    child: ListTile(
                     leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAhEGJENshdU6RCMct712lWyVymeEoSRo8iQ&usqp=CAU',width:100,height:100,fit: BoxFit.fill),                        
                     title:Text("Dehli" ,style: TextStyle(fontWeight: FontWeight.bold)),
                     subtitle: Wrap(
                           direction: Axis.vertical,
                       children: [
                         Text("India",style:TextStyle(color: Colors.grey)),
                         Text("Population: 19 mill"),
                       ],
                     ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                     leading: Image.network('https://images.unsplash.com/photo-1533929736458-ca588d08c8be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bG9uZG9ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',width:100,height:100,fit: BoxFit.fill),                        
                     title:Text("London" ,style: TextStyle(fontWeight: FontWeight.bold)),
                     subtitle: Wrap(
                           direction: Axis.vertical,
                       children: [
                         Text("Britain",style:TextStyle(color: Colors.grey)),
                         Text("Population: 8 mill"),
                       ],
                     ),
                     ),
                  ),
                  Card(
                    child: ListTile(
                     leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlHCIta-OOkQISmPaEBML78aszozs-HLbeJPKiZpYLHD-T1wOS1lDDHYXn46WyltTI5iU&usqp=CAU',width:100,height:100,fit: BoxFit.fill),                        
                     title:Text("Vancouver" ,style: TextStyle(fontWeight: FontWeight.bold)),
                     subtitle: Wrap(
                           direction: Axis.vertical,
                       children: [
                         Text("Canada",style:TextStyle(color: Colors.grey)),
                         Text("Population: 2.4 mill"),
                       ],
                     ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                     leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnReE1tsbUz07GpGyfLmknlXwJ9Deukcj85MX0Q_k4csWoPqs0zGtDbnVfafb84EwBTj4&usqp=CAU',width:100,height:100,fit: BoxFit.fill,),                        
                     title:Text("New York" ,style: TextStyle(fontWeight: FontWeight.bold)),
                     subtitle: Wrap(
                           direction: Axis.vertical,
                       children: [
                         Text("USA",style:TextStyle(color: Colors.grey)),
                         Text("Population: 8.1 mill"),
                       ],
                     ),
                    
                 ),
                  ),
                 ],
               ),
               
               
             ),
    ),
  ));  
}

