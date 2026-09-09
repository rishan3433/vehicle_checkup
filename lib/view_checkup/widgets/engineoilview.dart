import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart'; 
import 'package:vehicle_checkup/view_checkup/widgets/existing_values.dart';
import 'package:vehicle_checkup/view_checkup/widgets/image/imageshower.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/average.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/bad.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/danger.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/good.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/imageviewer.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/verybad.dart';

bool photoarea = false;
bool selectionarea = true;
String textdata = 'Show Image';

class Engineoilview extends StatefulWidget {
  const Engineoilview({super.key});

  @override
  State<Engineoilview> createState() => _EngineoilviewState();
}

bool preengineoil = false;
IconData headercardiconengine = Icons.keyboard_arrow_down_rounded;

class _EngineoilviewState extends State<Engineoilview> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: Border.all(width: 1),
        ),
        width: double.infinity,
        child: Column(
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
                    SizedBox(
                      width: getWidth(context),
                      child: Text(
                        "Engine Oil",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: fontsize(context),
                          fontWeight: FontWeight(800),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          preengineoil = !preengineoil;

                          if (preengineoil) {
                            headercardiconengine =
                                Icons.keyboard_arrow_up_rounded;
                          } else {
                            headercardiconengine =
                                Icons.keyboard_arrow_down_rounded;
                          }
                        });
                      },
                      icon: Icon(
                        headercardiconengine,
                        color: Colors.black,
                        size: 46,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: preengineoil,
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Visibility(
                        visible: selectionarea,
                        child: Stack(
                          children: [
                            Imageviewer(
                              width: 250,
                              Image:
                                  "lib/addcheckup/widgets/photos/engineoil.jpg",
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                              child: Column(
                                children: [
                                  SizedBox(height: 138),
                                  Goodneedleview(value: preengineoillevel1),
                                  SizedBox(height: 5),
                                  Averageneedleview(value: preengineoillevel2),
                                  SizedBox(height: 5),
                                  Badneedleview(value: preengineoillevel3),
                                  SizedBox(height: 5),
                                  VeryBadneedleview(value: preengineoillevel4),
                                  SizedBox(height: 5),
                                  Dangerneedleview(value: preengineoillevel5),
                                  SizedBox(height: 5),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Visibility(visible: photoarea, child: Imageshower(tempfile: preengineoilImage)),
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
            ),
          ],
        ),
      ),
    );
  }

  void setvalues() {
    setState(() {
      selectionarea = !selectionarea;
      photoarea = !photoarea;

      if (selectionarea) {
        textdata = "Show Image";
      } else {
        textdata = "Show Selection";
      }
    });
  }
}
