import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

bool enginebtnB = true;
bool enginebtnD = true;
bool enginebtnP = true;
bool enginebtnI = true;

class Frontlight extends StatefulWidget {
  const Frontlight({super.key});

  @override
  State<Frontlight> createState() => _FrontlightState();
}

class _FrontlightState extends State<Frontlight> {
  IconData lightOpenIcon = Icons.keyboard_arrow_down_rounded;
  bool frontLightCompartment = false;

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
                    "Head Light And Indicator",
                    style: TextStyle(
                      fontSize: fontsize(context),
                      fontWeight: FontWeight(800),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      frontLightCompartment = !frontLightCompartment;

                      if (frontLightCompartment) {
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
          visible: frontLightCompartment,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  width: 150,
                  child: Image.asset(
                    "lib/addcheckup/widgets/photos/Ace_Front.png",
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
                            "Bright ",
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
                            value: frontLightBrightLeft,
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  frontLightBrightLeft = true;
                                } else {
                                  frontLightBrightLeft = false;
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
                            value: frontLightBrightRight,
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  frontLightBrightRight = true;
                                } else {
                                  frontLightBrightRight = false;
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
                  visible: enginebtnB,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 85,
                          height: 50,
                          child: Center(
                            child: Text(
                              "Bright ",
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
                                var Tempdata = await GetImage(fBrightImage);
                                setState(() {
                                  fBrightImage = Tempdata;
                                  if (Tempdata != null) {
                                    enginebtnB = false;
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
                
                Divider(thickness: 1,color: Colors.black,),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 85,
                        height: 50,
                        child: Center(
                          child: Text(
                            "Dim ",
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
                            value: frontLightparkLeft,
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  frontLightparkLeft = true;
                                } else {
                                  frontLightparkLeft = false;
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
                            value: frontLightparkRight,
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  frontLightparkRight = true;
                                } else {
                                  frontLightparkRight = false;
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
                  visible: enginebtnD,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 85,
                          height: 50,
                          child: Center(
                            child: Text(
                              "Dim",
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
                                var Tempdata = await GetImage(fDimImage);
                                setState(() {
                                  fDimImage = Tempdata;
                                  if (Tempdata != null) {
                                    enginebtnD = false;
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
                
                Divider(thickness: 1,color: Colors.black,),


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
                            value: frontLightdimLeft,
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  frontLightdimLeft = true;
                                } else {
                                  frontLightdimLeft = false;
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
                            value: frontLightdimRight,
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  frontLightdimRight = true;
                                } else {
                                  frontLightdimRight = false;
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
                  visible: enginebtnP,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 85,
                          height: 50,
                          child: Center(
                            child: Text(
                              "Park",
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
                                var Tempdata = await GetImage(fParkImage);
                                setState(() {
                                  fParkImage = Tempdata;
                                  if (Tempdata != null) {
                                    enginebtnP = false;
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
                
                Divider(thickness: 1,color: Colors.black,),


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
                            value: frontLightindicatorLeft,
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  frontLightindicatorLeft = true;
                                } else {
                                  frontLightindicatorLeft = false;
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
                            value: frontLightindicatorRight,
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  frontLightindicatorRight = true;
                                } else {
                                  frontLightindicatorRight = false;
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
                  visible: enginebtnI,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 85,
                          height: 50,
                          child: Center(
                            child: Text(
                              "Indicator",
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
                                var Tempdata = await GetImage(fIndicatorImage);
                                setState(() {
                                  fIndicatorImage = Tempdata;
                                  if (Tempdata != null) {
                                    enginebtnI = false;
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
