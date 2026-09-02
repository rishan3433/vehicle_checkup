// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Goodneedleview extends StatefulWidget {
  Goodneedleview({super.key, required this.value});

  bool value;

  @override
  State<Goodneedleview> createState() => GgoodneedleviewState();
}

class GgoodneedleviewState extends State<Goodneedleview> {
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
                  "Good",
                  style: TextStyle(
                    color: Colors.green[800],
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
                          color: Colors.green[800],
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
