// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Averageneedleview extends StatefulWidget {
  Averageneedleview({super.key, required this.value});

  bool value;

  @override
  State<Averageneedleview> createState() => AverageneedleviewState();
}

class AverageneedleviewState extends State<Averageneedleview> {
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
                  "Average",
                  style: TextStyle(
                    color: Colors.amber,
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
                          color: Colors.amber,
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
