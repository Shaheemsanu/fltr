import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RandomWords(),
  ));
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder:  (context, i) {
        if (i.isOdd) return const Divider();

        final wordPair = WordPair.random();
        return ListTile(
          title: Text(wordPair.asPascalCase),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Random Name Geneartor')),
      body: _buildSuggestions(),
    );
  }
}
