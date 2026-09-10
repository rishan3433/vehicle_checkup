// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';

class Imageshower extends StatefulWidget {
  Imageshower({super.key, required this.tempfile});

  File? tempfile; 

  @override
  State<Imageshower> createState() => _ImageshowerState();
}

class _ImageshowerState extends State<Imageshower> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 200,
        child: widget.tempfile == null
            ? Visibility(visible: true, child: Text("No Image Received"))
            : Image.file(widget.tempfile!),
      ),
    );
  }
}
