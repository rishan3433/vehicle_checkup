import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/view_checkup/widgets/existing_values.dart';
import 'package:vehicle_checkup/view_checkup/widgets/header/textheader.dart';
import 'package:vehicle_checkup/view_checkup/widgets/image/imageshower.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/average.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/danger.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/good.dart';

IconData icon = Icons.keyboard_arrow_down_rounded;
bool mainArea = false, photoarea = false, selectionarea = true;
String textdata = "Show Image";

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
                child: Row(
                  children: [
                    Textheader(text: "Brake Fluid"),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          mainArea = !mainArea;
                          if (mainArea) {
                            icon = Icons.keyboard_arrow_up_rounded;
                          } else {
                            icon = Icons.keyboard_arrow_down_rounded;
                          }
                        });
                      },
                      icon: Icon(icon, color: Colors.black, size: 46),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: mainArea,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Visibility(
                      visible: selectionarea,
                      child: SizedBox(
                        width: double.infinity,
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 200,
                              width: 150,
                              child: Image.asset(
                                "lib/addcheckup/widgets/photos/BrakeFluid.png",
                              ),
                            ),
                            Padding(padding: EdgeInsetsGeometry.fromLTRB(70, 0, 0, 0,),child: Column(children: [
                              SizedBox(height: 70,),
                              Goodneedleview(value: prebrakeFluid1),
                              SizedBox(height: 15,),
                              Averageneedleview(value: prebrakeFluid2),
                              SizedBox(height: 15,),
                              Dangerneedleview(value: prebrakeFluid3),
                            ],),)
                          ],
                        ),
                      ),
                    ),
                    Visibility(visible: photoarea, child: SizedBox(height: 200,child: Imageshower(tempfile: prebrakeFluidImage),)),
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
