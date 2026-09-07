import 'package:flutter/material.dart';
import 'package:vehicle_checkup/view_checkup/widgets/header/textheader.dart';

IconData icon = Icons.keyboard_arrow_down_rounded;
bool mainArea = false,photoarea = false,selectionArea = true;

class ViewBrakefluid extends StatefulWidget {
  const ViewBrakefluid({super.key});

  @override
  State<ViewBrakefluid> createState() => _ViewBrakefluidState();
}

class _ViewBrakefluidState extends State<ViewBrakefluid> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            Container(
              height: 75,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Textheader(text: "Brake Fluid"),
                  IconButton(onPressed: (){
                    setState(() {
                      mainArea = !mainArea;
                      if (mainArea) {
                        icon = Icons.keyboard_arrow_up_rounded;
                      }else{
                        icon = Icons.keyboard_arrow_down_rounded;

                      }
                    });
                  }, icon: Icon(icon,color: Colors.black,size: 46,))
                ],),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
