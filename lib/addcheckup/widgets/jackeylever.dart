import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

bool enginebtn = true;

class JackeyLever extends StatefulWidget {
  const JackeyLever({super.key});

  @override
  State<JackeyLever> createState() => _JackeyLeverState();
}

class _JackeyLeverState extends State<JackeyLever> {
  IconData JackeyLever = Icons.keyboard_arrow_down_rounded;
  bool jackeyLevercompartment = false;

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
                    "JackeyLever",
                    style: TextStyle(fontWeight: FontWeight(800), fontSize: fontsize(context)),
                  ),
                ),
                IconButton(
                  onPressed: () => JackeyLeverVisiblity(),
                  icon: Icon(JackeyLever, size: 30),
                ),
              ],
            ),
          ),
        ),

        Visibility(
          visible: jackeyLevercompartment,
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 150,
                    child: Image.asset(
                      "lib/addcheckup/widgets/photos/JackeyLever.png",
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(7, 0, 7, 7),
                      child: SizedBox(
                        width: 170,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text("Yes"),
                                      Checkbox(
                                        value: jackeyLeverYes,
                                        onChanged: (value) {
                                          setState(() {
                                            if (jackeyLeverYes) {
                                            } else {
                                              jackeyLeverYes = true;
                                              jackeyLeverNo = false;
                                            }
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Text("No"),
                                      Checkbox(
                                        value: jackeyLeverNo,
                                        onChanged: (value) {
                                          setState(() {
                                            if (jackeyLeverNo) {
                                            } else {
                                              jackeyLeverYes = false;
                                              jackeyLeverNo = true;
                                            }
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Visibility(
                              visible: enginebtn,
                              child: Center(
                                child: SizedBox(
                                  width: 170,
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
                                          jackeyLeverImage,
                                        );
                                        setState(() {
                                          jackeyLeverImage = Tempdata;
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
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  void JackeyLeverVisiblity() {
    setState(() {
      jackeyLevercompartment = !jackeyLevercompartment;
    });

    if (jackeyLevercompartment) {
      setState(() {
        JackeyLever = Icons.keyboard_arrow_up_rounded;
      });
    } else {
      setState(() {
        JackeyLever = Icons.keyboard_arrow_down_rounded;
      });
    }
  }
}
