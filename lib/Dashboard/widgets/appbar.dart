import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

class Appbar extends StatelessWidget {
  final String text; 

  const Appbar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(height: 125,color: Colors.white, child: Center(child: Padding(
      padding: const EdgeInsets.fromLTRB(0,25,0,0),
      child: Text(text,style: TextStyle(fontWeight: FontWeight(800),fontSize: fontsize(context),fontFamily: "Anton"),),
    ),),);
  }
}