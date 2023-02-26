// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class CreatGroupPopup extends StatefulWidget {
  const CreatGroupPopup({super.key});

  @override
  State<CreatGroupPopup> createState() => _CreatGroupPopupState();
}

class _CreatGroupPopupState extends State<CreatGroupPopup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Pop_pup one"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Container(
                    child: AlertDialog(
                      title: Center(
                        child: Text("Enter Your Name"),
                      ),
                      content: TextField(
                        onChanged: (value) {},
                        decoration:
                            InputDecoration(hintText: "Enter Your Name"),
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
                            child: Text("Save")),
                      ],
                    ),
                  );
                });
          },
          child: Text("Press Me To See Magic"),
        ),
      ),
    );
  }
}
