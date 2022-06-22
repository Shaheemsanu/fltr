import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: strdgrdvw(),
  ));
}

class strdgrdvw extends StatefulWidget {
  const strdgrdvw({Key? key}) : super(key: key);

  @override
  State<strdgrdvw> createState() => _strdgrdvwState();
}

class _strdgrdvwState extends State<strdgrdvw> {
  List<String> listImages = [
    "https://images.pexels.com/photos/4221068/pexels-photo-4221068.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/11491782/pexels-photo-11491782.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/11674118/pexels-photo-11674118.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/11515591/pexels-photo-11515591.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/11763620/pexels-photo-11763620.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/12246538/pexels-photo-12246538.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/12241512/pexels-photo-12241512.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/12392344/pexels-photo-12392344.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/11635802/pexels-photo-11635802.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/12406415/pexels-photo-12406415.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/4151965/pexels-photo-4151965.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/12309828/pexels-photo-12309828.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/12312075/pexels-photo-12312075.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/11489467/pexels-photo-11489467.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/12458839/pexels-photo-12458839.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/12319830/pexels-photo-12319830.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/11940936/pexels-photo-11940936.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/7177235/pexels-photo-7177235.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/12333179/pexels-photo-12333179.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/11991865/pexels-photo-11991865.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Staggered GridView')),
      body: Container(
        margin: const EdgeInsets.all(12),
        child: StaggeredGridView.countBuilder(
            mainAxisSpacing: 8,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            crossAxisSpacing: 8,
            crossAxisCount: 2,
            itemCount: listImages.length,
            itemBuilder: (context, index) {
              final wordPair = WordPair.random();

              return Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              spreadRadius: 0.5,
                              color: Color.fromARGB(188, 158, 158, 158),
                              blurRadius: 4)
                        ],
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: FadeInImage.memoryNetwork(
                                placeholder: kTransparentImage,
                                image: listImages[index],
                                fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Text(
                            wordPair.asPascalCase,
                            style: TextStyle(color: Colors.green[600]),
                          ),
                        ),
                        const Center(
                            child: Padding(
                          padding:
                              EdgeInsets.only(top: 2, bottom: 10, right: 65),
                          child: Text(
                            "",
                            style: TextStyle(color: Colors.grey),
                          ),
                        )),
                        const Center(
                            child: Padding(
                          padding:
                              EdgeInsets.only(top: 2, bottom: 10, right: 65),
                          child: Text(
                            "More details....",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        )),
                      ],
                    )),
              );
            },
            staggeredTileBuilder: (index) {
              return StaggeredTile.count(1, index.isEven ? 1.7 : 1.9);
            }),
      ),
    );
  }
}
