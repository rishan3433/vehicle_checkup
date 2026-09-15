import 'package:flutter/material.dart';

class LowNeedleAddCheckup extends StatefulWidget {
  const LowNeedleAddCheckup({super.key});

  @override
  State<LowNeedleAddCheckup> createState() => _LowNeedleAddCheckupState();
}

class _LowNeedleAddCheckupState extends State<LowNeedleAddCheckup> {
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
                  "Low",
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
          ],
        ),
      ],
    );
  }
}