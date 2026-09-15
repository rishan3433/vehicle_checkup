import 'package:flutter/material.dart';

class VeryLowNeedleAddCheckup extends StatefulWidget {
  const VeryLowNeedleAddCheckup({super.key});

  @override
  State<VeryLowNeedleAddCheckup> createState() => _VeryLowNeedleAddCheckupState();
}

class _VeryLowNeedleAddCheckupState extends State<VeryLowNeedleAddCheckup> {
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
                  "Very Low",
                  style: TextStyle(
                    color: Colors.red[800],
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
                          color: Colors.red[800],
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