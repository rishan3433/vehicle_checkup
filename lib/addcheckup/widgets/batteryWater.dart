import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

bool enginebtn = true;

class Batterywater extends StatefulWidget {
  const Batterywater({super.key});

  @override
  State<Batterywater> createState() => _BatterywaterState();
}

class _BatterywaterState extends State<Batterywater> {
  IconData BatteryWater = Icons.keyboard_arrow_down_rounded;
  bool BatteryWater_compartment = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: getWidth(),
                  child: Text(
                    "Battery Water Level",
                    style: TextStyle(fontWeight: FontWeight(800), fontSize: fontsize(context)),
                  ),
                ),
                IconButton(
                  onPressed: () => BatteryWaterColourVisiblity(),
                  icon: Icon(BatteryWater, size: 30),
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(13)),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Visibility(
              visible: BatteryWater_compartment,
              child: Container(
                width: double.infinity,
                color: Colors.white, 
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 120,
                              child: Image.asset(
                                "lib/addcheckup/widgets/photos/Battery.png",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100.0, 18, 0, 0),
                        child: SizedBox(
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      50.0,
                                      0,
                                      0,
                                      0,
                                    ),
                                    child: Text(
                                      "Good",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      0,
                                      7,
                                      0,
                                      0,
                                    ),
                                    child: SizedBox(
                                      width: 100,
                                      child: Divider(
                                        color: Colors.green,
                                        thickness: 3,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      50.0,
                                      0,
                                      0,
                                      0,
                                    ),
                                    child: Text(
                                      "Average",
                                      style: TextStyle(
                                        color: Colors.amber,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      0,
                                      7,
                                      0,
                                      0,
                                    ),
                                    child: SizedBox(
                                      width: 100,
                                      child: Divider(
                                        color: Colors.amber,
                                        thickness: 3,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      50.0,
                                      0,
                                      0,
                                      0,
                                    ),
                                    child: Text(
                                      "Danger",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      0,
                                      7,
                                      0,
                                      0,
                                    ),
                                    child: SizedBox(
                                      width: 100,
                                      child: Divider(
                                        color: Colors.red,
                                        thickness: 3,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(190, 22, 0, 0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                              child: Checkbox(
                                value: batteryWater1,
                                onChanged: (value) => {
                                  if (value!)
                                    {
                                      setState(() {
                                        batteryWater1 = true;
                                        batteryWater2 = false;
                                        batteryWater3 = false;
                                      }),
                                    },
                                },
                              ),
                            ),
                            SizedBox(height: 10),

                            SizedBox(
                              height: 10,
                              child: Checkbox(
                                value: batteryWater2,
                                onChanged: (value) => {
                                  if (value!)
                                    {
                                      setState(() {
                                        batteryWater1 = false;
                                        batteryWater2 = true;
                                        batteryWater3 = false;
                                      }),
                                    },
                                },
                              ),
                            ),
                            SizedBox(height: 5),
                            Checkbox(
                              value: batteryWater3,
                              onChanged: (value) => {
                                if (value!)
                                  {
                                    setState(() {
                                      batteryWater1 = false;
                                      batteryWater2 = false;
                                      batteryWater3 = true;
                                    }),
                                  },
                              },
                            ),

                            SizedBox(height: 30),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: enginebtn,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(120.0, 120, 0, 0),
                          child: SizedBox(
                            width: 160,
                            height: 45,
                            child: DottedBorder(
                              options: RoundedRectDottedBorderOptions(
                                radius: Radius.circular(10),
                                padding: EdgeInsets.all(3),
                              ),

                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll<Color?>(
                                        Colors.amber,
                                      ),
                                  shape:
                                      WidgetStatePropertyAll<
                                        RoundedRectangleBorder?
                                      >(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusGeometry.all(
                                                Radius.circular(8),
                                              ),
                                        ),
                                      ),
                                ),
                                onPressed: () async {
                                  var Tempdata = await GetImage(
                                    batteryWaterImage,
                                  );
                                  setState(() {
                                    batteryWaterImage = Tempdata;
                                    if (Tempdata != null) {
                                      enginebtn = false;
                                    }
                                  });
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.file_upload_outlined,
                                      color: Colors.black,
                                    ),
                                    Text(
                                      "Reference Image",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  double? getWidth() {
    var width = MediaQuery.widthOf(context);

    width = width - 90;

    return width;
  }

  void BatteryWaterColourVisiblity() {
    setState(() {
      BatteryWater_compartment = !BatteryWater_compartment;
    });

    if (BatteryWater_compartment) {
      setState(() {
        BatteryWater = Icons.keyboard_arrow_up_rounded;
      });
    } else {
      setState(() {
        BatteryWater = Icons.keyboard_arrow_down_rounded;
      });
    }
  }

  void adddata(File? batteryWaterImages) async {}
}
