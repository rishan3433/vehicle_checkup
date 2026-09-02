import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

bool enginebtn = true;

class Wheelspanner extends StatefulWidget {
  const Wheelspanner({super.key});

  @override
  State<Wheelspanner> createState() => _WheelspannerState();
}

class _WheelspannerState extends State<Wheelspanner> {
  IconData Wheelspanner = Icons.keyboard_arrow_down_rounded;
  bool wheelspannercompartment = false;

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
                    "Wheel Spanner",
                    style: TextStyle(fontWeight: FontWeight(800), fontSize: fontsize(context)),
                  ),
                ),
                IconButton(
                  onPressed: () => WheelspannerVisiblity(),
                  icon: Icon(Wheelspanner, size: 30),
                ),
              ],
            ),
          ),
        ),

        Visibility(
          visible: wheelspannercompartment,
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 150,
                    child: Image.asset(
                      "lib/addcheckup/widgets/photos/WheelSpanner.png",
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
                                        value: wheelspannerYes,
                                        onChanged: (value) {
                                          setState(() {
                                            if (wheelspannerYes) {
                                            } else {
                                              wheelspannerYes = true;
                                              wheelspannerNo = false;
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
                                        value: wheelspannerNo,
                                        onChanged: (value) {
                                          setState(() {
                                            if (wheelspannerNo) {
                                            } else {
                                              wheelspannerYes = false;
                                              wheelspannerNo = true;
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
                                          wheelSpannerImage,
                                        );
                                        setState(() {
                                          wheelSpannerImage = Tempdata;
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
                                            style: TextStyle(
                                              color: Colors.black,
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

  void WheelspannerVisiblity() {
    setState(() {
      wheelspannercompartment = !wheelspannercompartment;
    });

    if (wheelspannercompartment) {
      setState(() {
        Wheelspanner = Icons.keyboard_arrow_up_rounded;
      });
    } else {
      setState(() {
        Wheelspanner = Icons.keyboard_arrow_down_rounded;
      });
    }
  }
}
