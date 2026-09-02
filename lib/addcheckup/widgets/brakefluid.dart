import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

bool enginebtn = true;

class Brakefluid extends StatefulWidget {
  const Brakefluid({super.key});

  @override
  State<Brakefluid> createState() => _BrakefluidState();
}

class _BrakefluidState extends State<Brakefluid> {
  IconData Brakefluid = Icons.keyboard_arrow_down_rounded;
  bool brakefluidcompartment = false;

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
                  "Brake Fluid Level",
                  style: TextStyle(fontWeight: FontWeight(800), fontSize: fontsize(context)),
                ),
              ),
              IconButton(
                onPressed: () => BrakefluidColourVisiblity(),
                icon: Icon(Brakefluid, size: 30),
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
              visible: brakefluidcompartment,
              child: Container(
                width: double.infinity,
                color: Colors.white, 
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(70, 20.0, 0, 0),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 160,
                              child: Image.asset(
                                "lib/addcheckup/widgets/photos/BrakeFluid.png",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40.0, 38, 0, 0),
                        child: SizedBox(
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Good",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                child: Divider(
                                  color: Colors.green,
                                  thickness: 3,
                                ),
                              ),
                              Text(
                                "Average",
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                child: Divider(
                                  color: Colors.amber,
                                  thickness: 3,
                                ),
                              ),
                              Text(
                                "Bad",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                child: Divider(color: Colors.red, thickness: 3),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                              child: Checkbox(
                                value: brakeFluid1,
                                onChanged: (value) => {
                                  if (value!)
                                    {
                                      setState(() {
                                        brakeFluid1 = true;
                                        brakeFluid2 = false;
                                        brakeFluid3 = false;
                                      }),
                                    },
                                },
                              ),
                            ),
                            SizedBox(height: 10),

                            SizedBox(
                              height: 20,
                              child: Checkbox(
                                value: brakeFluid2,
                                onChanged: (value) => {
                                  if (value!)
                                    {
                                      setState(() {
                                        brakeFluid1 = false;
                                        brakeFluid2 = true;
                                        brakeFluid3 = false;
                                      }),
                                    },
                                },
                              ),
                            ),
                            SizedBox(height: 5),
                            Checkbox(
                              value: brakeFluid3,
                              onChanged: (value) => {
                                if (value!)
                                  {
                                    setState(() {
                                      brakeFluid1 = false;
                                      brakeFluid2 = false;
                                      brakeFluid3 = true;
                                    }),
                                  },
                              },
                            ),

                            SizedBox(height: 30),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: enginebtn,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 160, 0, 0),
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
                                    brakeFluidImage,
                                  );
                                  setState(() {
                                    brakeFluidImage = Tempdata;
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

  void BrakefluidColourVisiblity() {
    setState(() {
      brakefluidcompartment = !brakefluidcompartment;
    });

    if (brakefluidcompartment) {
      setState(() {
        Brakefluid = Icons.keyboard_arrow_up_rounded;
      });
    } else {
      setState(() {
        Brakefluid = Icons.keyboard_arrow_down_rounded;
      });
    }
  }
}
