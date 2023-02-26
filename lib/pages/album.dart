// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gallary/pages/searchpage.dart';

class MyAlbumPage extends StatefulWidget {
  const MyAlbumPage({super.key});

  @override
  State<MyAlbumPage> createState() => _MyAlbumPageState();
}

class _MyAlbumPageState extends State<MyAlbumPage> {
  @override
  Widget build(BuildContext context) {
    albumcart(text) {
      return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 99, 135, 179),
          border: Border.all(color: Colors.black12, width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
      );
    }

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
                    "Albums",
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
                        child: GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      child: AlertDialog(
                                        title: Center(
                                          child: Text("Short By"),
                                        ),
                                        content: Container(
                                          height: 195,
                                          child: Column(
                                            children: [
                                              Row(
                                                // ignore: prefer_const_literals_to_create_immutables
                                                children: [
                                                  MyStatefulWidget(),
                                                  Text("Custom Order"),
                                                ],
                                              ),
                                              Row(
                                                // ignore: prefer_const_literals_to_create_immutables
                                                children: [
                                                  MyStatefulWidget(),
                                                  Text("Name"),
                                                ],
                                              ),
                                              Row(
                                                // ignore: prefer_const_literals_to_create_immutables
                                                children: [
                                                  MyStatefulWidget(),
                                                  Text("Ascending"),
                                                ],
                                              ),
                                              Row(
                                                // ignore: prefer_const_literals_to_create_immutables
                                                children: [
                                                  MyStatefulWidget(),
                                                  Text("Descending"),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("Cancel")),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("Done")),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: Text("Short")),
                      ),
                      PopupMenuItem<int>(
                        value: 3,
                        child: GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      child: AlertDialog(
                                        title: Center(
                                          child: Text("Enter Album"),
                                        ),
                                        content: TextField(
                                          onChanged: (value) {},
                                          decoration: InputDecoration(
                                              hintText: "Album 1"),
                                        ),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("Cancel")),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("Creat")),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: Text("Creat Album")),
                      ),
                      PopupMenuItem<int>(
                        value: 4,
                        child: GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      child: AlertDialog(
                                        title: Center(
                                          child: Text("Creat Group"),
                                        ),
                                        content: TextField(
                                          onChanged: (value) {},
                                          decoration: InputDecoration(
                                              hintText: "Group 1"),
                                        ),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("Cancel")),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("Creat")),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: Text("Creat Group")),
                      ),
                      PopupMenuItem<int>(
                        value: 5,
                        child: Text("Hide or Unhide Albums"),
                      ),
                    ];
                  },
                )
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
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  albumcart(1),
                  albumcart(1),
                  albumcart(1),
                  albumcart(1),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  albumcart(1),
                  albumcart(1),
                  albumcart(1),
                  albumcart(1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.green;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
