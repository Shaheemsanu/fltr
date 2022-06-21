import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: tabbar(),
  ));
}

class tabbar extends StatelessWidget {
  const tabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 75, 150, 255),
            title: const Text("Tab Bar"),
          ),
          body: Column(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 75, 150, 255),
                            Color.fromARGB(255, 37, 199, 224),
                            Color.fromARGB(255, 94, 169, 231),
                            Color.fromARGB(251, 78, 145, 239),
                          ])),
                  child: const TabBar(
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      tabs: [
                        Tab(
                          child: Center(child: Text("Chat")),
                        ),
                        Tab(
                          child: Center(child: Text("Status")),
                        ),
                        Tab(
                          child: Center(child: Text("Call")),
                        ),
                        Tab(
                          child: Center(child: Text("Settings")),
                        ),
                      ]),
                ),
              ),
              const Expanded(
                child: TabBarView(children: [
                  Center(child: Text("chats")),
                  Center(child: Text("status")),
                  Center(child: Text("call")),
                  Center(child: Text("settings"))
                ]),
              )
            ],
          ),
        ));
  }
}
