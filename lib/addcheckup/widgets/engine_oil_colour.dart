import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

class EngineOilColour extends StatefulWidget {
  const EngineOilColour({super.key});

  @override
  State<EngineOilColour> createState() => _EngineOilColourState();
}

class _EngineOilColourState extends State<EngineOilColour> {
  IconData engineoilcolour = Icons.keyboard_arrow_down_rounded;
  bool Engineoilcolour_compartment = false;

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
                  "Engine Oil Colour",
                  style: TextStyle(fontWeight: FontWeight(800), fontSize: fontsize(context)),
                ),
              ),
              IconButton(
                onPressed: () => EngineOilColourVisiblity(),
                icon: Icon(engineoilcolour, size: 30),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(13))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
            child: Visibility(
              visible: Engineoilcolour_compartment,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 100,
                          child: Text(
                            "Light Black",
                            style: TextStyle(color: Colors.green, fontSize: 20),
                          ),
                        ),
                        SizedBox(width: 20),
                        SizedBox(
                          height: 20,
                          child: Checkbox(
                            value: engineoilcolour1,
                            onChanged: (value) {
                              if (value!) {
                                setState(() {
                                  engineoilcolour1 = true;
                                  engineoilcolour2 = false;
                                  engineoilcolour3 = false;
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 100,
                          child: Text(
                            "Normal Black",
                            style: TextStyle(color: Colors.amber, fontSize: 20),
                          ),
                        ),
                        SizedBox(width: 20),
                        SizedBox(
                          height: 20,
                          child: Checkbox(
                            value: engineoilcolour2,
                            onChanged: (value) {
                              if (value!) {
                                setState(() {
                                  engineoilcolour1 = false;
                                  engineoilcolour2 = true;
                                  engineoilcolour3 = false;
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 100,
                          child: Text(
                            "Dark Black",
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ),
                        ),
                        SizedBox(width: 20),
                        SizedBox(
                          height: 20,
                          child: Checkbox(
                            value: engineoilcolour3,
                            onChanged: (value) {
                              if (value!) {
                                setState(() {
                                  engineoilcolour1 = false;
                                  engineoilcolour2 = false;
                                  engineoilcolour3 = true;
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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

  void EngineOilColourVisiblity() {
    setState(() {
      Engineoilcolour_compartment = !Engineoilcolour_compartment;
    });

    if (Engineoilcolour_compartment) {
      setState(() {
        engineoilcolour = Icons.keyboard_arrow_up_rounded;
      });
    } else {
      setState(() {
        engineoilcolour = Icons.keyboard_arrow_down_rounded;
      });
    }
  }
}
