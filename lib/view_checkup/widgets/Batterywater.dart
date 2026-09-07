import 'package:flutter/material.dart';
import 'package:vehicle_checkup/view_checkup/widgets/header/textheader.dart';

class ViewBatteryWater extends StatefulWidget {
  const ViewBatteryWater({super.key});

  @override
  State<ViewBatteryWater> createState() => _ViewBatteryWaterState();
}

class _ViewBatteryWaterState extends State<ViewBatteryWater> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(8.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          children: [
            Container(
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.amberAccent
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [Textheader(text: "Battery Water")],),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
