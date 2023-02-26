// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MySuggestion extends StatefulWidget {
  const MySuggestion({super.key});

  @override
  State<MySuggestion> createState() => _MySuggestionState();
}

class _MySuggestionState extends State<MySuggestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Suggestion"),
      ),
      body: Center(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [Center(child: Text("No Suggestion"))],
        ),
      ),
    );
  }
}
