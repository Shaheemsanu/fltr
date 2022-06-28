import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomSheet(),
  ));
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomSheet'),
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 0, 0, 0)),
            onPressed: () {
              bottomsheet(context);
            },
            child: const Text('bottomsheet')),
      ),
    );
  }

  bottomsheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return ListView(
            children: const [
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
              ),
              ListTile(
                leading: Icon(Icons.copy),
                title: Text('Copy link'),
              ),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text('Edit'),
              )
            ],
          );
        });
  }
}
