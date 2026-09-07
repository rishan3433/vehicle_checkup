import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';
import 'package:vehicle_checkup/view_checkup/widgets/existing_values.dart';
import 'package:vehicle_checkup/view_checkup/widgets/header/textheader.dart';
import 'package:vehicle_checkup/view_checkup/widgets/image/imageshower.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/average.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/bad.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/danger.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/good.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/verybad.dart';

IconData icon = Icons.keyboard_arrow_down_rounded;
bool viewWipervisible = false;
bool selectionarea = true, photoarea = false;
String textdata = "Show Image";

class ViewWiperWater extends StatefulWidget {
  const ViewWiperWater({super.key});

  @override
  State<ViewWiperWater> createState() => _ViewWiperWaterState();
}

class _ViewWiperWaterState extends State<ViewWiperWater> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: Border.all(width: 1, color: Colors.black),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Padding(
                padding: EdgeInsetsGeometry.all(8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Textheader(text: "WIPER WATER"),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          viewWipervisible = !viewWipervisible;
                          if (viewWipervisible) {
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
              visible: viewWipervisible,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Visibility(
                      visible: selectionarea,
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 200,
                            child: Image.asset(
                              "lib/addcheckup/widgets/photos/WiperWater.png",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                            child: Column(
                              children: [
                                SizedBox(height: 40),
                                Goodneedleview(value: prewiperWaterLevel1),
                                SizedBox(height: 10),
                                Averageneedleview(value: prewiperWaterLevel2),
                                SizedBox(height: 10),
                                Badneedleview(value: prewiperWaterLevel3),
                                SizedBox(height: 10),
                                VeryBadneedleview(value: prewiperWaterLevel4),
                                SizedBox(height: 10),
                                Dangerneedleview(value: prewiperWaterLevel5),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(visible: photoarea, child: SizedBox(height: 200,child: Imageshower(tempfile: prewiperWaterImage),)),
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
