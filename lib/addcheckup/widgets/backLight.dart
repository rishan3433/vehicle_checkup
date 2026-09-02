import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

bool backlightnB = true;
bool backlightnR = true;
bool backlightnP = true;
bool backlightnI = true;

class BackLight extends StatefulWidget {
  const BackLight({super.key});

  @override
  State<BackLight> createState() => _BackLightState();
}

class _BackLightState extends State<BackLight> {
  IconData lightOpenIcon = Icons.keyboard_arrow_down_rounded;
  bool backLightCompartment = false;

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
                  width: getWidth(context),
                  child: Text(
                    "Tail Light And Indicator",
                    style: TextStyle(
                      fontSize: fontsize(context),
                      fontWeight: FontWeight(800),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      backLightCompartment = !backLightCompartment;

                      if (backLightCompartment) {
                        lightOpenIcon = Icons.keyboard_arrow_up_rounded;
                      } else {
                        lightOpenIcon = Icons.keyboard_arrow_down_rounded;
                      }
                    });
                  },
                  icon: Icon(lightOpenIcon, size: 30),
                ),
              ],
            ),
          ),
        ),
        Visibility(
          visible: backLightCompartment,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  width: 150,
                  child: Image.asset(
                    "lib/addcheckup/widgets/photos/Ace_back.png",
                  ),
                ),
                SizedBox(height: 25),

                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                  child: Row(
                    children: [
                      SizedBox(width: 85),
                      SizedBox(
                        width: 50,
                        child: Center(
                          child: Text(
                            "Left",
                            style: TextStyle(fontWeight: FontWeight(800)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: Center(
                          child: Text(
                            "Right",
                            style: TextStyle(fontWeight: FontWeight(800)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 85,
                        height: 50,
                        child: Center(
                          child: Text(
                            "Brake ",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight(800),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Checkbox(
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            value: backLightBrakeLeft,
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  backLightBrakeLeft = true;
                                } else {
                                  backLightBrakeLeft = false;
                                }
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Checkbox(
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            value: backLightBrakeRight,
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  backLightBrakeRight = true;
                                } else {
                                  backLightBrakeRight = false;
                                }
                              });
                            },
                          ),
                        ),
                      ),
                      // Checkbox(value: true, onChanged: () {}),
                    ],
                  ),
                ),

                Visibility(
                  visible: backlightnB,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 85,
                          height: 50,
                          child: Center(
                            child: Text(
                              "Brake ",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight(800),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
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
                                var Tempdata = await GetImage(bbrakeImage);
                                setState(() {
                                  bbrakeImage = Tempdata;
                                  if (Tempdata != null) {
                                    backlightnB = false;
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
                      ],
                    ),
                  ),
                ),

                Divider(thickness: 1, color: Colors.black),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 85,
                        height: 50,
                        child: Center(
                          child: Text(
                            "Reverse ",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight(800),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Checkbox(
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            value: backLightReverseLeft,
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  backLightReverseLeft = true;
                                } else {
                                  backLightReverseLeft = false;
                                }
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Checkbox(
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            value: backLightReverseRight,
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  backLightReverseRight = true;
                                } else {
                                  backLightReverseRight = false;
                                }
                              });
                            },
                          ),
                        ),
                      ),
                      // Checkbox(value: true, onChanged: () {}),
                    ],
                  ),
                ),

                Visibility(
                  visible: backlightnR,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 85,
                          height: 50,
                          child: Center(
                            child: Text(
                              "Reverse ",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight(800),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
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
                                var Tempdata = await GetImage(bReverseImage);
                                setState(() {
                                  bReverseImage = Tempdata;
                                  if (Tempdata != null) {
                                    backlightnR = false;
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
                      ],
                    ),
                  ),
                ),

                Divider(thickness: 1, color: Colors.black),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 85,
                        height: 50,
                        child: Center(
                          child: Text(
                            "Park ",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight(800),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Checkbox(
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            value: backLightparkLeft,
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  backLightparkLeft = true;
                                } else {
                                  backLightparkLeft = false;
                                }
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Checkbox(
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            value: backLightparkRight,
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  backLightparkRight = true;
                                } else {
                                  backLightparkRight = false;
                                }
                              });
                            },
                          ),
                        ),
                      ),
                      // Checkbox(value: true, onChanged: () {}),
                    ],
                  ),
                ),

                Visibility(
                  visible: backlightnP,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 85,
                          height: 50,
                          child: Center(
                            child: Text(
                              "Park ",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight(800),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
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
                                var Tempdata = await GetImage(bParkImage);
                                setState(() {
                                  bParkImage = Tempdata;
                                  if (Tempdata != null) {
                                    backlightnP = false;
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
                      ],
                    ),
                  ),
                ),

                Divider(thickness: 1, color: Colors.black),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 85,
                        height: 50,
                        child: Center(
                          child: Text(
                            "Indicator ",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight(800),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Checkbox(
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            value: backLightindicatorLeft,
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  backLightindicatorLeft = true;
                                } else {
                                  backLightindicatorLeft = false;
                                }
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Checkbox(
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            value: backLightindicatorRight,
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  backLightindicatorRight = true;
                                } else {
                                  backLightindicatorRight = false;
                                }
                              });
                            },
                          ),
                        ),
                      ),
                      // Checkbox(value: true, onChanged: () {}),
                    ],
                  ),
                ),

                Visibility(
                  visible: backlightnI,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 85,
                          height: 50,
                          child: Center(
                            child: Text(
                              "Indicator ",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight(800),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
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
                                var Tempdata = await GetImage(bIndicatorImage);
                                setState(() {
                                  bIndicatorImage = Tempdata;
                                  if (Tempdata != null) {
                                    backlightnI = false;
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
