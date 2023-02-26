// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gallary/pages/searchpage.dart';

class MyPicturePage extends StatefulWidget {
  const MyPicturePage({super.key});

  @override
  State<MyPicturePage> createState() => _MyPicturePageState();
}

class _MyPicturePageState extends State<MyPicturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Center(
                  child: Text(
                    "Pictures",
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MySearchPage()));
                    },
                    child: Icon(Icons.search)),
                SizedBox(
                  width: 10,
                ),
                PopupMenuButton(
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem<int>(
                        value: 0,
                        child: Text("Edit"),
                      ),
                      PopupMenuItem<int>(
                        value: 1,
                        child: Text("Select All"),
                      ),
                      PopupMenuItem<int>(
                        value: 2,
                        child: Text("Creat"),
                      ),
                      PopupMenuItem<int>(
                        value: 3,
                        child: Text("Start Slideshow"),
                      ),
                    ];
                  },
                )
                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: Icon(Icons.menu_rounded),
                // ),
              ],
            ),
          ],
        ),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text("Date Here"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 50, width: 50, color: Colors.red),
                  Container(height: 50, width: 50, color: Colors.red),
                  Container(height: 50, width: 50, color: Colors.red),
                  Container(height: 50, width: 50, color: Colors.red),
                  Container(height: 50, width: 50, color: Colors.red),
                  Container(height: 50, width: 50, color: Colors.red),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text("Date Here"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 50, width: 50, color: Colors.red),
                  Container(height: 50, width: 50, color: Colors.red),
                  Container(height: 50, width: 50, color: Colors.red),
                  Container(height: 50, width: 50, color: Colors.red),
                  Container(height: 50, width: 50, color: Colors.red),
                  Container(height: 50, width: 50, color: Colors.red),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
