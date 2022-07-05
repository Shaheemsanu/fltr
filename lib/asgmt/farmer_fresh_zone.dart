import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:transparent_image/transparent_image.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Frmzn(),
  ));
}

class Frmzn extends StatefulWidget {
  const Frmzn({Key? key}) : super(key: key);

  @override
  State<Frmzn> createState() => _FrmznState();
}

class _FrmznState extends State<Frmzn> {
  List<String> frmImages = [
    "https://images.pexels.com/photos/1435904/pexels-photo-1435904.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/68525/soap-colorful-color-fruit-68525.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/4397748/pexels-photo-4397748.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/6489717/pexels-photo-6489717.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/4198183/pexels-photo-4198183.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/5273033/pexels-photo-5273033.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
  ];
  List frmctgry = [
    "Vegetable",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutriton Chargers",
    "Packed Flavors"
  ];
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      bottomNavigationBar: GNav(
        onTabChange: (value) {
          selectIndex = value;
        },
        selectedIndex: selectIndex,
        tabBorderRadius: 0,
        iconSize: 20,
        tabBackgroundGradient:
            LinearGradient(colors: [Colors.grey[300]!, Colors.grey[200]!]),
        color: Colors.grey,
        tabMargin: const EdgeInsets.all(0),
        tabBackgroundColor: Colors.grey[200]!,
        padding:
            const EdgeInsets.only(left: 40, bottom: 10, right: 40, top: 10),
        textSize: 10,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'HOME',
          ),
          GButton(
            icon: FontAwesomeIcons.cartShopping,
            text: 'CART',
            iconSize: 17,
          ),
          GButton(
            icon: Icons.person,
            text: 'PERSON',
          )
        ],
        style: GnavStyle.oldSchool,
        activeColor: Colors.green,
        duration: const Duration(microseconds: 100),
      ),
      body: CustomScrollView(slivers: [
        SliverAppBar(
            pinned: true,
            backgroundColor: Colors.green,
            title: const Text("FARMERS FRESH ZONE"),
            floating: true,
            actions: [
              Row(
                children: const [
                  Icon(Icons.location_on_outlined),
                  Text(" Kochi"),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ],
            bottom: AppBar(
              backgroundColor: Colors.green,
              title: Container(
                padding: const EdgeInsets.only(bottom: 7, top: 6),
                child: const TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Search for something',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.keyboard_voice_outlined)),
                ),
              ),
            )),
        SliverList(
            delegate: SliverChildListDelegate([
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                Frmtab(
                  txt: "VEGETABLE",
                ),
                Frmtab(
                  txt: "FRUITS",
                ),
                Frmtab(
                  txt: "EXOTIC",
                ),
                Frmtab(
                  txt: "FRESH CUTS",
                ),
                Frmtab(
                  txt: "FRESH CUTS",
                ),
              ],
            ),
          ),
          Image.asset('assets/images/frm.jpg'),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                      color: const Color.fromARGB(124, 81, 181, 119))),
              child: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          iconSize: 1,
                          icon: Image.asset('assets/images/stopwatch.png'),
                          onPressed: () => (0),
                        ),
                        const Text(
                          "30 MINS POLICY",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        IconButton(
                          iconSize: 1,
                          icon: Image.asset('assets/images/track.png'),
                          onPressed: () => (0),
                        ),
                        const Text(
                          "TRACEABILITY",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        IconButton(
                          iconSize: 1,
                          icon: Image.asset('assets/images/farmer.png'),
                          onPressed: () => (0),
                        ),
                        const Text(
                          "LOCAL SOURCING",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const Text("Shop By Category",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
          Padding(
            padding: const EdgeInsets.all(8),
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: frmImages.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 12,
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return (Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(color: Colors.black45, blurRadius: 8)
                      ],
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: FadeInImage.memoryNetwork(
                                  placeholder: kTransparentImage,
                                  image: frmImages[index],
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 20),
                            child: Center(
                              child: Text(
                                frmctgry[index],
                                style: TextStyle(color: Colors.green[600]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ));
                }),
          )
        ]))
      ]),
    ));
  }
}

class Frmtab extends StatelessWidget {
  const Frmtab({Key? key, required this.txt}) : super(key: key);
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
      child: (Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(129, 126, 215, 129),
            border: Border.all(color: const Color.fromARGB(255, 117, 223, 120)),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
          child: Text(
            txt,
            style: const TextStyle(
                color: Color.fromARGB(255, 17, 95, 19),
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ),
      )),
    );
  }
}
