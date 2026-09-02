// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Badneedleview extends StatefulWidget {
  Badneedleview({super.key, required this.value});

  bool value;

  @override
  State<Badneedleview> createState() => BadneedleviewState();
}

class BadneedleviewState extends State<Badneedleview> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Stack(
              alignment: AlignmentGeometry.topEnd,
              children: [
                Text(
                  "Bad",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight(800),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 13.0, 0, 0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Divider(
                          height: 2,
                          color: Colors.red,
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
              child: Checkbox(value: widget.value,activeColor: Colors.black, onChanged: (value) {}),
            ),
          ],
        ),
      ],
    );
  }
}
