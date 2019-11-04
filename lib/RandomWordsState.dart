
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'RandomWords.dart';

class RandomWordsState extends State<RandomWords>{
  final _suggestions = <WordPair>[];
  final _myTextStyle = const TextStyle(fontSize: 18.0, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Infinite scroll generator"),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions(){
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        //if(i.isOdd) return Divider();

        final index = i ~/ 2;
        if(index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }

        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    return Card(
      child: ListTile(
        title: Text(pair.asPascalCase,
          style: _myTextStyle,
        ),
      ),
    );
  }
}