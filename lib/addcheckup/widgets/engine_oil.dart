import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

bool enginebtn = true;

class EngineOil extends StatefulWidget {
  const EngineOil({super.key});

  @override
  State<EngineOil> createState() => _EngineOilState();
}

class _EngineOilState extends State<EngineOil> {
  IconData engineoil = Icons.keyboard_arrow_down_rounded;
  bool Engineoil_compartment = false;

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
                  "Engine Oil Level",
                  style: TextStyle(fontWeight: FontWeight(800), fontSize: fontsize(context)),
                ),
              ),
              IconButton(
                onPressed: () => EngineOilVisiblity(),
                icon: Icon(engineoil, size: 30),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(13)),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Visibility(
              visible: Engineoil_compartment,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    height: 250,
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          "lib/addcheckup/widgets/photos/engineoil.jpg",
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
                          child: SizedBox(
                            height: 245,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 12,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      4.0,
                                      0,
                                      0,
                                      0,
                                    ),
                                    child: Text(
                                      "Good",
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      child: Divider(
                                        color: Colors.green,
                                        thickness: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        10,
                                      ),
                                      child: SizedBox(
                                        height: 15,
                                        child: Checkbox(
                                          value: engineoillevel1,
                                          onChanged: (bool? newval) {
                                            setState(() {
                                              print("new $newval");
                                              if (newval!) {
                                                engineoillevel1 = true;
                                                engineoillevel2 = false;
                                                engineoillevel3 = false;
                                                engineoillevel4 = false;
                                                engineoillevel5 = false;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  height: 12,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      4.0,
                                      0,
                                      0,
                                      0,
                                    ),
                                    child: Text(
                                      "Average",
                                      style: TextStyle(color: Colors.amber),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      child: Divider(
                                        color: Colors.amber,
                                        thickness: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        10,
                                      ),
                                      child: SizedBox(
                                        height: 15,
                                        child: Checkbox(
                                          value: engineoillevel2,
                                          onChanged: (bool? newval) {
                                            setState(() {
                                              print("new $newval");
                                              if (newval!) {
                                                engineoillevel1 = false;
                                                engineoillevel2 = true;
                                                engineoillevel3 = false;
                                                engineoillevel4 = false;
                                                engineoillevel5 = false;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  height: 12,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      4.0,
                                      0,
                                      0,
                                      0,
                                    ),
                                    child: Text(
                                      "Bad",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      child: Divider(
                                        color: Colors.red,
                                        thickness: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        10,
                                      ),
                                      child: SizedBox(
                                        height: 15,
                                        child: Checkbox(
                                          value: engineoillevel3,
                                          onChanged: (bool? newval) {
                                            setState(() {
                                              print("new $newval");
                                              if (newval!) {
                                                engineoillevel1 = false;
                                                engineoillevel2 = false;
                                                engineoillevel3 = true;
                                                engineoillevel4 = false;
                                                engineoillevel5 = false;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  height: 12,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      4.0,
                                      0,
                                      0,
                                      0,
                                    ),
                                    child: Text(
                                      "Very Bad",
                                      style: TextStyle(color: Colors.red[700]),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      child: Divider(
                                        color: Colors.red[700],
                                        thickness: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        10,
                                      ),
                                      child: SizedBox(
                                        height: 15,
                                        child: Checkbox(
                                          value: engineoillevel4,
                                          onChanged: (bool? newval) {
                                            setState(() {
                                              print("new $newval");
                                              if (newval!) {
                                                engineoillevel1 = false;
                                                engineoillevel2 = false;
                                                engineoillevel3 = false;
                                                engineoillevel4 = true;
                                                engineoillevel5 = false;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  height: 12,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      4.0,
                                      0,
                                      0,
                                      0,
                                    ),
                                    child: Text(
                                      "Danger",
                                      style: TextStyle(color: Colors.red[900]),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      child: Divider(
                                        color: Colors.red[900],
                                        thickness: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        10,
                                      ),
                                      child: SizedBox(
                                        height: 15,
                                        child: Checkbox(
                                          value: engineoillevel5,
                                          onChanged: (bool? newval) {
                                            setState(() {
                                              print("new $newval");
                                              if (newval!) {
                                                engineoillevel1 = false;
                                                engineoillevel2 = false;
                                                engineoillevel3 = false;
                                                engineoillevel4 = false;
                                                engineoillevel5 = true;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Visibility(
                          visible: enginebtn,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                              180.0,
                              170,
                              0,
                              0,
                            ),
                            child: SizedBox(
                              width: 160,
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
                                      engineoilImage,
                                    );
                                    setState(() {
                                      engineoilImage = Tempdata;
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

  void EngineOilVisiblity() {
    setState(() {
      Engineoil_compartment = !Engineoil_compartment;
    });

    if (Engineoil_compartment) {
      setState(() {
        engineoil = Icons.keyboard_arrow_up_rounded;
      });
    } else {
      setState(() {
        engineoil = Icons.keyboard_arrow_down_rounded;
      });
    }
  }

  // Future<void> imagePicker(String s) async {

  //   ImagePicker picker = ImagePicker();

  //   final XFile? xFile = await picker.pickImage(source: ImageSource.camera);

  //   engineoilImage = File(xFile!.path);

  //   if (await engineoilImage!.exists()) {
  //     setState(() {
  //       enginebtn = false;
  //     });
  //   }

  // }
}
