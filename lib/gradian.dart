import 'package:flutter/material.dart';

class gradian extends StatefulWidget {
  const gradian({super.key});

  @override
  State<gradian> createState() => _gradianState();
}

class _gradianState extends State<gradian> {
  List emojis = ["💖", "✌", "👏"];
  List quotes = ["You can do it", "keep going", "Belive in your"];
  List colors = [
    Color.fromARGB(49, 182, 11, 45),
    Color.fromARGB(200, 182, 20, 45),
    Color.fromARGB(8, 182, 11, 45),
  ];

  void randomqoute() {
    setState(() {
      emojis.shuffle();
      quotes.shuffle();
      colors.shuffle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: randomqoute,
        child: Text(
          "NewQuote",
          selectionColor: Color.fromARGB(19, 23, 168, 30),
        ),
      ),
    );
  }
}
