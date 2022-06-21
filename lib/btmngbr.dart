import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: BtmNg(),
  ));
}

class BtmNg extends StatefulWidget {
  const BtmNg({Key? key}) : super(key: key);

  @override
  State<BtmNg> createState() => _BtmNgState();
}

class _BtmNgState extends State<BtmNg> {
  int _selectedindex = 0;

  static const List<Widget> _pages = <Widget>[
    Icon(
      Icons.call,
      size: 150,
    ),
    Icon(
      Icons.camera,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
  ];

  void _onItemtapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.shifting,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
            //  backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
            //  backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            activeIcon: Icon(Icons.chat_bubble),
            //  backgroundColor: Colors.grey,
            label: 'Chats',
          ),
        ],
        currentIndex: _selectedindex,
        onTap: _onItemtapped,
      ),
    );
  }
}
