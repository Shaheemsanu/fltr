import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: const Text("data"),
    routes: {
      "settings": (BuildContext cntx) => const settings(),
      "home": (BuildContext cntx) => const home(),
      "profile": (BuildContext cntx) => const profile(),
      "body": (BuildContext cntx) => const route()
    },
    initialRoute: "body",
  ));
}

class route extends StatelessWidget {
  const route({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: const Text("route"),
        ),
        body: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('home');
          },
          child: const Text(" profile"),
        )));
  }
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: const Text("home"),
        ),
        body: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('home');
          },
          child: const Text("go to profile"),
        )));
  }
}

class settings extends StatelessWidget {
  const settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: const Text("settings"),
        ),
        body: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('profile');
          },
          child: const Text("go to profile"),
        )));
  }
}

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: const Text("profile"),
        ),
        body: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('settings');
          },
          child: const Text("go to settings"),
        )));
  }
}





