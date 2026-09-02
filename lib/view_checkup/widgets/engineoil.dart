import 'package:flutter/material.dart';
import 'package:vehicle_checkup/view_checkup/widgets/engineoilview.dart';

class ViewEngineoil extends StatefulWidget {
  const ViewEngineoil({super.key});

  @override
  State<ViewEngineoil> createState() => ViewEngineoilState();
}

class ViewEngineoilState extends State<ViewEngineoil> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Engineoilview()
      ],
    );
  }
}