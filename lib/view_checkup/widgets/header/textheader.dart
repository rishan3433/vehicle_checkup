import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

// ignore: must_be_immutable
class Textheader extends StatefulWidget {
  Textheader({super.key, required this.text});

  String text;

  @override
  State<Textheader> createState() => _TextheaderState();
}

class _TextheaderState extends State<Textheader> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getWidth(context),
      child: Text(
        widget.text,
        style: TextStyle(
          color: Colors.black,
          fontSize: fontsize(context),
          fontWeight: FontWeight(800),
        ),
      ),
    );
  }
}
