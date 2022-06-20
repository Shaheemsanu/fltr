import 'package:flutter/material.dart';
import 'package:flutter_application_1/asgmt/Drawer.dart/screens/images.dart';
import 'package:flutter_application_1/asgmt/Drawer.dart/screens/othpg.dart';

class dwr extends StatefulWidget {
  const dwr({Key? key}) : super(key: key);

  @override
  State<dwr> createState() => _dwrState();
}

class _dwrState extends State<dwr> {
  String mpic =
      "https://images.unsplash.com/photo-1594751543129-6701ad444259?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZGFyayUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80";
  String othpic =
      "https://images.pexels.com/photos/956981/milky-way-starry-sky-night-sky-star-956981.jpeg?auto=compress&cs=tinysrgb&w=400";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Page Title ',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_outlined,
            ),
          ),
        ],
      ),
      drawer: Theme(
          data: Theme.of(context)
              .copyWith(hoverColor: Colors.black12, focusColor: Colors.black),
          child: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: const Text("Arun"),
                  accountEmail: const Text("Arun@gmail.com"),
                  currentAccountPicture: GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(mpic),
                    ),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(othpic), fit: BoxFit.cover)),
                ),
                ListTile(
                  title: const Text("Home"),
                  leading: const Icon(Icons.home),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const dwr(),
                    ));
                  },
                ),
                ListTile(
                  title: const Text("Import"),
                  leading: const Icon(Icons.other_houses),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const otpg(),
                    ));
                  },
                ),
                ListTile(
                  title: const Text("Gallery"),
                  leading: const Icon(Icons.image),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const imgs(),
                    ));
                  },
                ),
                ListTile(
                  title: const Text("Slideshow"),
                  leading: const Icon(Icons.slideshow),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const imgs(),
                    ));
                  },
                ),
                const ListTile(
                  title: Text("Tools"),
                  leading: Icon(Icons.settings),
                ),
                const Divider(),
                const ListTile(
                  textColor: Color.fromARGB(255, 130, 130, 130),
                  title: Text("Communicate"),
                ),
                const ListTile(
                  title: Text("Share"),
                  leading: Icon(Icons.share),
                ),
                const ListTile(
                  title: Text("Send"),
                  leading: Icon(Icons.send),
                )
              ],
            ),
          )),
      body: const Center(
        child: Text(
          "Home page",
          style: TextStyle(fontSize: 60, color: Colors.blueGrey),
        ),
      ),
    );
  }
}
