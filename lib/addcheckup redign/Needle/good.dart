import 'package:flutter/material.dart';

class GoodNeedleAddCheckup extends StatefulWidget {
  const GoodNeedleAddCheckup({super.key});

  @override
  State<GoodNeedleAddCheckup> createState() => _GoodNeedleAddCheckupState();
}

class _GoodNeedleAddCheckupState extends State<GoodNeedleAddCheckup> {
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
          ],
        ),
      ],
    );
  }
}