import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

bool enginebtn = true;

class WiperWater extends StatefulWidget {
  const WiperWater({super.key});

  @override
  State<WiperWater> createState() => _WiperWaterState();
}

class _WiperWaterState extends State<WiperWater> {
  IconData WiperWater = Icons.keyboard_arrow_down_rounded;
  bool WiperWater_compartment = false;

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

          child: Row(
            children: [
              SizedBox(
                width: getWidth(),
                child: Text(
                  "Wiper Water Level",
                  style: TextStyle(fontWeight: FontWeight(800), fontSize: fontsize(context)),
                ),
              ),
              IconButton(
                onPressed: () => WiperWaterVisiblity(),
                icon: Icon(WiperWater, size: 30),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(13)),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Visibility(
              visible: WiperWater_compartment,
              child: Container(
                color: Colors.white, 
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      width: 125,
                      child: Image.asset(
                        "lib/addcheckup/widgets/photos/WiperWater.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(90.0, 0, 0, 0),
                      child: SizedBox(
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  width: 70,
                                  child: Align(
                                    alignment: AlignmentGeometry.centerEnd,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        9,
                                      ),
                                      child: Text(
                                        "Good",
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 70,
                                      height: 10,
                                      child: Divider(
                                        color: Colors.green,
                                        thickness: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        10,
                                      ),
                                      child: SizedBox(
                                        height: 10,
                                        child: Checkbox(
                                          value: wiperWaterLevel1,
                                          onChanged: (bool? newval) {
                                            setState(() {
                                              print("new $newval");
                                              if (newval!) {
                                                wiperWaterLevel1 = true;
                                                wiperWaterLevel2 = false;
                                                wiperWaterLevel3 = false;
                                                wiperWaterLevel4 = false;
                                                wiperWaterLevel5 = false;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            Stack(
                              children: [
                                SizedBox(
                                  width: 70,
                                  child: Align(
                                    alignment: AlignmentGeometry.centerEnd,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        9,
                                      ),
                                      child: Text(
                                        "Average",
                                        style: TextStyle(
                                          color: Colors.amber,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 70,
                                      height: 10,
                                      child: Divider(
                                        color: Colors.amber,
                                        thickness: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        10,
                                      ),
                                      child: SizedBox(
                                        height: 10,
                                        child: Checkbox(
                                          value: wiperWaterLevel2,
                                          onChanged: (bool? newval) {
                                            setState(() {
                                              print("new $newval");
                                              if (newval!) {
                                                wiperWaterLevel1 = false;
                                                wiperWaterLevel2 = true;
                                                wiperWaterLevel3 = false;
                                                wiperWaterLevel4 = false;
                                                wiperWaterLevel5 = false;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            Stack(
                              children: [
                                SizedBox(
                                  width: 70,
                                  child: Align(
                                    alignment: AlignmentGeometry.centerEnd,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        9,
                                      ),
                                      child: Text(
                                        "Low",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 70,
                                      height: 10,
                                      child: Divider(
                                        color: Colors.red,
                                        thickness: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        10,
                                      ),
                                      child: SizedBox(
                                        height: 15,
                                        child: Checkbox(
                                          value: wiperWaterLevel3,
                                          onChanged: (bool? newval) {
                                            setState(() {
                                              print("new $newval");
                                              if (newval!) {
                                                wiperWaterLevel1 = false;
                                                wiperWaterLevel2 = false;
                                                wiperWaterLevel3 = true;
                                                wiperWaterLevel4 = false;
                                                wiperWaterLevel5 = false;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            Stack(
                              children: [
                                SizedBox(
                                  width: 70,
                                  child: Align(
                                    alignment: AlignmentGeometry.centerEnd,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        9,
                                      ),
                                      child: Text(
                                        "Very Low",
                                        style: TextStyle(
                                          color: Colors.red[800],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 70,
                                      height: 10,
                                      child: Divider(
                                        color: Colors.red[800],
                                        thickness: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        10,
                                      ),
                                      child: SizedBox(
                                        height: 15,
                                        child: Checkbox(
                                          value: wiperWaterLevel4,
                                          onChanged: (bool? newval) {
                                            setState(() {
                                              print("new $newval");
                                              if (newval!) {
                                                wiperWaterLevel1 = false;
                                                wiperWaterLevel2 = false;
                                                wiperWaterLevel3 = false;
                                                wiperWaterLevel4 = true;
                                                wiperWaterLevel5 = false;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            Stack(
                              children: [
                                SizedBox(
                                  width: 70,
                                  child: Align(
                                    alignment: AlignmentGeometry.centerEnd,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        9,
                                      ),
                                      child: Text(
                                        "Danger",
                                        style: TextStyle(
                                          color: Colors.red[900],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 70,
                                      height: 10,
                                      child: Divider(
                                        color: Colors.red[900],
                                        thickness: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        10,
                                      ),
                                      child: SizedBox(
                                        height: 15,
                                        child: Checkbox(
                                          value: wiperWaterLevel5,
                                          onChanged: (bool? newval) {
                                            setState(() {
                                              print("new $newval");
                                              if (newval!) {
                                                wiperWaterLevel1 = false;
                                                wiperWaterLevel2 = false;
                                                wiperWaterLevel3 = false;
                                                wiperWaterLevel4 = false;
                                                wiperWaterLevel5 = true;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: enginebtn,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 170, 0, 0),
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
                                backgroundColor: WidgetStatePropertyAll<Color?>(
                                  Colors.amber,
                                ),
                                shape:
                                    WidgetStatePropertyAll<
                                      RoundedRectangleBorder?
                                    >(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadiusGeometry.all(
                                          Radius.circular(8),
                                        ),
                                      ),
                                    ),
                              ),
                              onPressed: () async {
                                var Tempdata = await GetImage(wiperWaterImage);
                                setState(() {
                                  wiperWaterImage = Tempdata;
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
      ],
    );
  }

  double? getWidth() {
    var width = MediaQuery.widthOf(context);

    width = width - 90;

    return width;
  }

  void WiperWaterVisiblity() {
    setState(() {
      WiperWater_compartment = !WiperWater_compartment;
    });

    if (WiperWater_compartment) {
      setState(() {
        WiperWater = Icons.keyboard_arrow_up_rounded;
      });
    } else {
      setState(() {
        WiperWater = Icons.keyboard_arrow_down_rounded;
      });
    }
  }
}
