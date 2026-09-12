// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

void main() {
  runApp(Addcheckupredesignmain(vehicleNo: "KL 32 W 6490"));
}

class Addcheckupredesignmain extends StatefulWidget {
  Addcheckupredesignmain({super.key, required this.vehicleNo});

  String vehicleNo;

  @override
  State<Addcheckupredesignmain> createState() => _AddcheckupredesignmainState();
}

class _AddcheckupredesignmainState extends State<Addcheckupredesignmain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Addcheckupredesign(vehicleno: widget.vehicleNo));
  }
}

class Addcheckupredesign extends StatefulWidget {
  Addcheckupredesign({super.key, required this.vehicleno});

  String vehicleno;

  @override
  State<Addcheckupredesign> createState() => _AddcheckupredesignState();
}

class _AddcheckupredesignState extends State<Addcheckupredesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: Column(
          children: [ 
            Padding(
              padding: const EdgeInsets.fromLTRB(0,30,0,0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_left_rounded,
                        color: Colors.black,
                        size: 46,
                      ),
                    ),
                    SizedBox(width: getwidtha(),),
                    Text(widget.vehicleno,style: TextStyle(fontSize: 24,fontWeight: FontWeight(700),fontFamily: "Anton"),),
                ],
              ),
            ),
            Divider(color: Colors.black),
          ],
        ),
      ),
      body: SafeArea(child: Column(children: [Text("data")])),
    );
  }

  double? getwidtha() {
    var width = MediaQuery.widthOf(context);

    width = width / 2;
    width = width - 120; 
    return width;
  }
}
