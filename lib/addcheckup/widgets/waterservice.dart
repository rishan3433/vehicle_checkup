import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

bool enginebtnF = true;
bool enginebtnB = true;
bool enginebtnL = true;
bool enginebtnR = true;

class Waterservice extends StatefulWidget {
  const Waterservice({super.key});

  @override
  State<Waterservice> createState() => _WaterserviceState();
}

class _WaterserviceState extends State<Waterservice> {
  IconData Waterservice = Icons.keyboard_arrow_down_rounded;
  bool Waterservice_compartment = false;

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
                  width: getWidth(),
                  child: Text(
                    "Water Service",
                    style: TextStyle(fontWeight: FontWeight(800), fontSize: fontsize(context)),
                  ),
                ),
                IconButton(
                  onPressed: () => WaterserviceVisiblity(),
                  icon: Icon(Waterservice, size: 30),
                ),
              ],
            ),
          ),
        ),
        Visibility(
          visible: Waterservice_compartment,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  width: 250,
                  child: Image.asset(
                    "lib/addcheckup/widgets/photos/WaterService.jpg",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: SizedBox(
                    width: 250,
                    child: TextField(
                      controller: waterServiceFillingDate,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hint: Text("Filling Date"),
                      ),
                      readOnly: true,
                      onTap: () => showDate(),
                    ),
                  ),
                ),
                Visibility(
                  visible: enginebtnF,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 55,
                          child: Text("Front", style: TextStyle(fontSize: 20,fontWeight: FontWeight(500)),),
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
                                    WidgetStatePropertyAll<RoundedRectangleBorder?>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadiusGeometry.all(
                                          Radius.circular(8),
                                        ),
                                      ),
                                    ),
                              ),
                              onPressed: () async {
                                var Tempdata = await GetImage(waterServiceImageFront);
                                setState(() {
                                  waterServiceImageFront = Tempdata;
                                  if (Tempdata != null) {
                                    enginebtnF = false;
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
                Visibility(
                  visible: enginebtnB,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 55,
                          child: Text("Back", style: TextStyle(fontSize: 20,fontWeight: FontWeight(500)),),
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
                                    WidgetStatePropertyAll<RoundedRectangleBorder?>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadiusGeometry.all(
                                          Radius.circular(8),
                                        ),
                                      ),
                                    ),
                              ),
                              onPressed: () async {
                                var Tempdata = await GetImage(waterServiceImageBack);
                                setState(() {
                                  waterServiceImageBack = Tempdata;
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
                Visibility(
                  visible: enginebtnL,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 55,
                          child: Text("Left", style: TextStyle(fontSize: 20,fontWeight: FontWeight(500)),),
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
                                    WidgetStatePropertyAll<RoundedRectangleBorder?>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadiusGeometry.all(
                                          Radius.circular(8),
                                        ),
                                      ),
                                    ),
                              ),
                              onPressed: () async {
                                var Tempdata = await GetImage(waterServiceImageLeft);
                                setState(() {
                                  waterServiceImageLeft = Tempdata;
                                  if (Tempdata != null) {
                                    enginebtnL = false;
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
                Visibility(
                  visible: enginebtnR,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 55,
                          child: Text("Right", style: TextStyle(fontSize: 20,fontWeight: FontWeight(500)),),
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
                                    WidgetStatePropertyAll<RoundedRectangleBorder?>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadiusGeometry.all(
                                          Radius.circular(8),
                                        ),
                                      ),
                                    ),
                              ),
                              onPressed: () async {
                                var Tempdata = await GetImage(waterServiceImageRight);
                                setState(() {
                                  waterServiceImageRight = Tempdata;
                                  if (Tempdata != null) {
                                    enginebtnR = false;
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

  double? getWidth() {
    var width = MediaQuery.widthOf(context);

    width = width - 90;

    return width;
  }

  void WaterserviceVisiblity() {
    setState(() {
      Waterservice_compartment = !Waterservice_compartment;
    });

    if (Waterservice_compartment) {
      setState(() {
        Waterservice = Icons.keyboard_arrow_up_rounded;
      });
    } else {
      setState(() {
        Waterservice = Icons.keyboard_arrow_down_rounded;
      });
    }
  }

  void showDate() async {
    DateTime firest = DateTime.now();
    DateTime? datePicker = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(firest.year, firest.month),
      lastDate: DateTime.now(),
    );

    if (datePicker != null) {
      setState(() {
        waterServiceFillingDate.text = datePicker.toString().split(" ")[0];
      });
    }
  }
}
