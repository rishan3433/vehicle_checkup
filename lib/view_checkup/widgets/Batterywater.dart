import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/view_checkup/widgets/existing_values.dart';
import 'package:vehicle_checkup/view_checkup/widgets/header/textheader.dart';
import 'package:vehicle_checkup/view_checkup/widgets/image/imageshower.dart';
import 'package:vehicle_checkup/view_checkup/widgets/image/selectionImage.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/average.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/danger.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/good.dart';

IconData visiblicon = Icons.keyboard_arrow_down_rounded;
bool batteryWaterMainArea = true, batterySelection = true, photoarea = false;
String Batterytextdata = "Show Image";

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
        decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            Container(
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.amberAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Textheader(text: "Battery Water"),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          batteryWaterMainArea = !batteryWaterMainArea;
                          if (batteryWaterMainArea) {
                            visiblicon = Icons.keyboard_arrow_up_rounded;
                          } else {
                            visiblicon = Icons.keyboard_arrow_down_rounded;
                          }
                        });
                      },
                      icon: Icon(visiblicon, color: Colors.black, size: 46),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: batteryWaterMainArea,
              child: Padding(
                padding: EdgeInsetsGeometry.all(8),
                child: Column(
                  children: [
                    Visibility(
                      visible: batterySelection,
                      child: SizedBox(
                        width: double.infinity,
                        child: Stack(
                          alignment: AlignmentGeometry.centerStart,
                          children: [
                            Selectionimage(
                              ImagePath:
                                  "lib/addcheckup/widgets/photos/Battery.png",
                            ),
                            Padding(
                              padding: EdgeInsetsGeometry.fromLTRB(
                                getwidthofpadding(context),
                                0,
                                0,
                                0,
                              ),
                              child: SizedBox(
                                height: 200,
                                child: Column(
                                  children: [
                                    SizedBox(height: gettopheight()),
                                    Goodneedleview(value: prebatteryWater1),
                                    SizedBox(height: getheightofneedle()),
                                    Averageneedleview(value: prebatteryWater2),
                                    SizedBox(height: getheightofneedle()),
                                    Dangerneedleview(value: prebatteryWater3),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Visibility(
                      visible: photoarea,
                      child: Imageshower(tempfile: prebatteryWaterImage),
                    ),

                    DottedBorder(
                      options: RoundedRectDottedBorderOptions(
                        radius: Radius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll<Color?>(
                              Colors.amber,
                            ),
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.all(
                                  Radius.circular(12),
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              batterySelection = !batterySelection;
                              photoarea = !photoarea;

                              if (batterySelection) {
                                Batterytextdata = "Show Image";
                              } else {
                                Batterytextdata = "Show Selection";
                              }
                            });
                          },
                          child: Text(
                            Batterytextdata,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight(800),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  double? getheightofneedle() {
    double width = MediaQuery.sizeOf(context).height;

    width = width * 1.2;

    width = width / 100;

    return width;
  }

  double? gettopheight() {
    double width = MediaQuery.sizeOf(context).height;

    width = width * 2.4;

    width = width / 100;

    return width;
  }
}
