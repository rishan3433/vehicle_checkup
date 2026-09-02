// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

class Header extends StatefulWidget {
  Header({
    super.key,
    required this.headername,
    required this.icon,
    required this.visible,
  });

  String headername;
  IconData icon;
  bool visible;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.all(8),
        child: Row(
          children: [
            SizedBox(
              width: getWidth(context),
              child: Text(
                widget.headername,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontsize(context),fontWeight: FontWeight(800)
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  widget.visible = !widget.visible;

                  if (widget.visible) {
                    widget.icon = Icons.keyboard_arrow_up_rounded;
                  } else {
                    widget.icon = Icons.keyboard_arrow_down_rounded;
                  }
                });
              },
              icon: Icon(widget.icon,size: 46,color: Colors.black,),
            ),
          ],
        ),
      ),
    );
  }
}
