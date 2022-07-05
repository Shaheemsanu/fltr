import 'package:flutter/material.dart';
import 'package:flutter_application_1/asgmt/reg/logn.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Loginuipg(),
  ));
}

class Loginuipg extends StatelessWidget {
  const Loginuipg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  opacity: 0.5,
                  image: AssetImage('assets/images/room2.jpg'))),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 150),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Welcome to tis awesome login app.",
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(179, 228, 226, 226)),
                ),
              ),
              const Text(
                "You are awesome",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(179, 228, 226, 226)),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.pink,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23))),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Log()));
                },
                child: const Text("login"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 13),
                    primary: const Color.fromARGB(124, 156, 154, 154),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23))),
                child: const Text('Register'),
                onPressed: () {},
              ),
            ],
          )),
    ));
  }
}
