// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AddCheckupImage extends StatefulWidget {
  AddCheckupImage({super.key, required this.height, required this.imagepath});

  double height;
  String imagepath;

  @override
  State<AddCheckupImage> createState() => _AddCheckupImageState();
}

class _AddCheckupImageState extends State<AddCheckupImage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.height,
      child: Image.asset(widget.imagepath),
    );
  }
}
