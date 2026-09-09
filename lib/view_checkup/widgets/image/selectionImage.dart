// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart'; 

class Selectionimage extends StatefulWidget {
  Selectionimage({super.key, required this.ImagePath});

  String ImagePath;

  @override
  State<Selectionimage> createState() => _SelectionimageState();
}

class _SelectionimageState extends State<Selectionimage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(), 
      width: getWidthslection(),
      child: Image.asset(widget.ImagePath),
    );
  }

  double? getHeight() {
    double height = MediaQuery.sizeOf(context).height;

    height = height *24;

    height = height / 100;

    return height;
  }

  double? getWidthslection() {
    double width = MediaQuery.sizeOf(context).width;

    width = width * 39;

    width = width / 100;

    return width;
  }
}
