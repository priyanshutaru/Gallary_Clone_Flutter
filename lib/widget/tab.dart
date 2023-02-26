// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:gallary/MenuPages/location.dart';
import 'package:gallary/MenuPages/recentpage.dart';
import 'package:gallary/MenuPages/recycle.dart';
import 'package:gallary/MenuPages/setting.dart';
import 'package:gallary/MenuPages/suggestion.dart';
import 'package:gallary/MenuPages/videos.dart';
import 'package:gallary/pages/album.dart';
import 'package:gallary/pages/picture.dart';
import 'package:gallary/pages/popupcard.dart';

import '../MenuPages/fav.dart';

class MyTabbar extends StatefulWidget {
  const MyTabbar({super.key});

  @override
  State<MyTabbar> createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar> {
  List Pages = [
    MyPicturePage(),
    MyAlbumPage(),
    MyPopupCard(),
  ];
  int current_page = 0;
  void ontap(int index) {
    setState(() {
      current_page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[current_page],
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        selectedItemColor: Color.fromARGB(255, 7, 239, 134),
        onTap: ontap,
        currentIndex: current_page,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            label: "Pictures",
            icon: Icon(
              Icons.photo,
            ),
          ),
          BottomNavigationBarItem(
            label: "Album",
            icon: Icon(
              Icons.album,
            ),
          ),
          BottomNavigationBarItem(
            tooltip: "Menu",
            label: "Menu",
            icon: GestureDetector(
              onTap: () {
                showModalBottomSheet<void>(
                  // context and builder are
                  // required properties in this widget
                  context: context,
                  builder: (BuildContext context) {
                    // we set up a container inside which
                    // we create center column and display text

                    // Returning SizedBox instead of a Container
                    return Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MyFavriout()));
                                    },
                                    child: Column(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Icon(Icons.favorite_border),
                                        Text("Favourites"),
                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: 35,
                                  // ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MyRecentPage()));
                                    },
                                    child: Column(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Icon(Icons.access_time),
                                        Text("Recents"),
                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: 35,
                                  // ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MyVideosPage()));
                                    },
                                    child: Column(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Icon(Icons.video_collection_outlined),
                                        Text("Videos"),
                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: 35,
                                  // ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MySuggestion()));
                                    },
                                    child: Column(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Icon(Icons.mark_chat_read),
                                        Text("Suggestions"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MyLocation()));
                                    },
                                    child: Column(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Icon(Icons.location_on_outlined),
                                        Text("Location"),
                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: 35,
                                  // ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MyRecycleBin()));
                                    },
                                    child: Column(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Icon(Icons.delete_outline),
                                        Text("Recycle bin"),
                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: 35,
                                  // ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MySettingPage()));
                                    },
                                    child: Column(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Icon(Icons.settings_outlined),
                                        Text("Settings"),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Icon(
                                          Icons.settings_outlined,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "Settings",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Icon(
                Icons.menu,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
