// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyFavriout extends StatefulWidget {
  const MyFavriout({super.key});

  @override
  State<MyFavriout> createState() => _MyFavrioutState();
}

class _MyFavrioutState extends State<MyFavriout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAvourites"),
      ),
      body: Center(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [Center(child: Text("No Favrioutes"))],
        ),
      ),
    );
  }
}
