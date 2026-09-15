import 'package:flutter/material.dart';

class DangerNeedleAddCheckup extends StatefulWidget {
  const DangerNeedleAddCheckup({super.key});

  @override
  State<DangerNeedleAddCheckup> createState() => _DangerNeedleAddCheckupState();
}

class _DangerNeedleAddCheckupState extends State<DangerNeedleAddCheckup> {
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
                  "Danger",
                  style: TextStyle(
                    color: Colors.red[900],
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
                          color: Colors.red[900],
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