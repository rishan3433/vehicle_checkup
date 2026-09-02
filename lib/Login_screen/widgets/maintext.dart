import 'package:flutter/material.dart';

class Maintext extends StatelessWidget {
  Maintext({super.key, required this.textdata});

  final String textdata;

  @override
  Widget build(BuildContext context) {
    return Text(
      textdata,
      style: TextStyle(
        fontWeight: FontWeight(800),
        fontSize: 23,
        color: Colors.white,
        fontFamily: 'Shrikhand'
      ),
    );
  }
}
