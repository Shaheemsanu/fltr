// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import 'MyHomepage.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch:Colors.orange),
//       home:MyHomePage() ,
//     )  ;
//   }

// }


import 'package:flutter/material.dart';

import 'splshsrn.dart';

void main(List<String> args) {
  runApp(FstApp());
}

class FstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch:Colors.orange),
      home: SplashScn(),

    );
  
  }
// }
// class Scn extends StatelessWidget {
//   const Scn({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(mainAxisAlignment: MainAxisAlignment.center,
//           children: 
//             [const Text(
//               "Asif",
//               style: TextStyle(backgroundColor: Colors.yellow),
//             ),
//             ElevatedButton(onPressed: (){
//               Navigator.push(context,MaterialPageRoute(builder: (context)=>scn2()) );
//             }, child: const Text("next"))
//           ],
//         ),
//       ),
//     );
//   }
// }
// class scn2 extends StatelessWidget {
//   const scn2({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        body: Center(
//          child: Column(mainAxisAlignment: MainAxisAlignment.center,
//           children:[ 
//           ElevatedButton(onPressed: (){Navigator.of(context).pop();

//           }, child: Image.asset("assets/target.png",width: 200,height: 200,
//           ))
//   ]),
//        ),
//     );
//   }
}