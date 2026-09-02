import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

bool jackeybtn = true;

class Jackey extends StatefulWidget {
  const Jackey({super.key});

  @override
  State<Jackey> createState() => _JackeyState();
}

class _JackeyState extends State<Jackey> {
  IconData Jackey = Icons.keyboard_arrow_down_rounded;
  bool jackeycompartment = false;

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
                    "Jackey",
                    style: TextStyle(fontWeight: FontWeight(800), fontSize: fontsize(context)),
                  ),
                ),
                IconButton(
                  onPressed: () => JackeyVisiblity(),
                  icon: Icon(Jackey, size: 30),
                ),
              ],
            ),
          ),
        ),

        Visibility(
          visible: jackeycompartment,
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 150,
                    child: Image.asset(
                      "lib/addcheckup/widgets/photos/Jackey.png",
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
                                        value: jackeyYes,
                                        onChanged: (value) {
                                          setState(() {
                                            if (jackeyYes) {
                                            } else {
                                              jackeyYes = true;
                                              jackeyNo = false;
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
                                        value: jackeyNo,
                                        onChanged: (value) {
                                          setState(() {
                                            if (jackeyNo) {
                                            } else {
                                              jackeyYes = false;
                                              jackeyNo = true;
                                            }
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Center(
                              child: Visibility(
                                visible: jackeybtn,
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
                                          jackeyImage,
                                        );
                                        setState(() {
                                          jackeyImage = Tempdata;
                                          if (Tempdata != null) {
                                            jackeybtn = false;
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

  void JackeyVisiblity() {
    setState(() {
      jackeycompartment = !jackeycompartment;
    });

    if (jackeycompartment) {
      setState(() {
        Jackey = Icons.keyboard_arrow_up_rounded;
      });
    } else {
      setState(() {
        Jackey = Icons.keyboard_arrow_down_rounded;
      });
    }
  }
}
