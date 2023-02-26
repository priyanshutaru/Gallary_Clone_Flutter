import 'package:flutter/material.dart';
import 'package:gallary/pages/album.dart';

class MyPopupCard extends StatefulWidget {
  const MyPopupCard({super.key});

  @override
  State<MyPopupCard> createState() => _MyPopupCardState();
}

class _MyPopupCardState extends State<MyPopupCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyAlbumPage());
  }
}
