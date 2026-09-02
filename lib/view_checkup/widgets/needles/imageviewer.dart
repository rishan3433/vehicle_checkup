// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Imageviewer extends StatefulWidget {
  Imageviewer({super.key,required this.width, required this.Image});
  double width;
  String Image;

  @override
  State<Imageviewer> createState() => _ImageviewerState();
}

class _ImageviewerState extends State<Imageviewer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.width,
      child: Image.asset(widget.Image),
    );
  }
}