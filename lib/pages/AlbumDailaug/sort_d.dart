// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Mycheckbox extends StatefulWidget {
  const Mycheckbox({super.key});

  @override
  State<Mycheckbox> createState() => _MycheckboxState();
}

class _MycheckboxState extends State<Mycheckbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
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
