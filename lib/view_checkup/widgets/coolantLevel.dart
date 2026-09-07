import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/view_checkup/widgets/existing_values.dart';
import 'package:vehicle_checkup/view_checkup/widgets/header/textheader.dart';
import 'package:vehicle_checkup/view_checkup/widgets/image/imageshower.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/average.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/danger.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/good.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/imageviewer.dart';

IconData coolantIcon = Icons.keyboard_arrow_down_rounded;
bool coolatvisible = false;
bool photoarea = false;
bool selectionarea = true;
String textdata = 'Show Image';

class ViewCoolantlevel extends StatefulWidget {
  const ViewCoolantlevel({super.key});

  @override
  State<ViewCoolantlevel> createState() => _ViewCoolantlevelState();
}

class _ViewCoolantlevelState extends State<ViewCoolantlevel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Textheader(text: "Coolant Level"),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          coolatvisible = !coolatvisible;
                        });
                      },
                      icon: Icon(coolantIcon, size: 46, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: coolatvisible,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Visibility(
                      visible: selectionarea,
                      child: Stack(
                        children: [
                          Imageviewer(
                            width: 90,
                            Image:
                                "lib/addcheckup/widgets/photos/CoolantLevel.jpg",
                          ),
                          Row(
                            children: [
                              SizedBox(width: 135),
                              Column(
                                children: [
                                  Goodneedleview(value: precoolantlevel1),
                                  SizedBox(height: 5),
                                  Averageneedleview(value: precoolantlevel2),
                                  SizedBox(height: 5),
                                  Dangerneedleview(value: precoolantlevel3),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: double.infinity,),
                    Visibility(
                      visible: photoarea,
                      child: Imageshower(tempfile: precoolantImage),
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
                              selectionarea = !selectionarea;
                              photoarea = !photoarea;

                              if (selectionarea) {
                                textdata = "Show Image";
                              } else {
                                textdata = "Show Selection";
                              }
                            });
                          },
                          child: Text(
                            textdata,
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
}
