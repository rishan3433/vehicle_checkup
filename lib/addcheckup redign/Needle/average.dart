import 'package:flutter/material.dart';

class AverageNeedleAddCheckup extends StatefulWidget {
  const AverageNeedleAddCheckup({super.key});

  @override
  State<AverageNeedleAddCheckup> createState() => _AverageNeedleAddCheckupState();
}

class _AverageNeedleAddCheckupState extends State<AverageNeedleAddCheckup> {
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
          ],
        ),
      ],
    );
  }
}