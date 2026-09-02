import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

bool coolbtn = true;

class Coolantlevel extends StatefulWidget {
  const Coolantlevel({super.key});

  @override
  State<Coolantlevel> createState() => _CoolantlevelState();
}

class _CoolantlevelState extends State<Coolantlevel> {
  IconData CoolantLevel = Icons.keyboard_arrow_down_rounded;
  bool CoolantLevel_compartment = false;

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
                  "Coolant Level",
                  style: TextStyle(fontWeight: FontWeight(800), fontSize: fontsize(context)),
                ),
              ),
              IconButton(
                onPressed: () => CoolantLevelColourVisiblity(),
                icon: Icon(CoolantLevel, size: 30),
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
              visible: CoolantLevel_compartment,
              child: Container(
                width: double.infinity,
                color: Colors.white, 
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(80, 20.0, 0, 0),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 200,
                              child: Image.asset(
                                "lib/addcheckup/widgets/photos/CoolantLevel.jpg",
                              ),
                            ),
                            Visibility(
                              visible: coolbtn,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
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
                                        var coolantImagetemp = await GetImage(
                                          coolantImage,
                                        );
                                        setState(() {
                                          coolantImage == coolantImagetemp;

                                          if (coolantImagetemp != null) {
                                            coolbtn = false;
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40.0, 6, 0, 0),
                        child: SizedBox(
                          width: 75,
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
                                width: 75,
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
                                width: 75,
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
                                width: 75,
                                child: Divider(color: Colors.red, thickness: 3),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                              child: Checkbox(
                                value: coolantlevel1,
                                onChanged: (value) => {
                                  if (value!)
                                    {
                                      setState(() {
                                        coolantlevel1 = true;
                                        coolantlevel2 = false;
                                        coolantlevel3 = false;
                                      }),
                                    },
                                },
                              ),
                            ),
                            SizedBox(height: 10),

                            SizedBox(
                              height: 20,
                              child: Checkbox(
                                value: coolantlevel2,
                                onChanged: (value) => {
                                  if (value!)
                                    {
                                      setState(() {
                                        coolantlevel1 = false;
                                        coolantlevel2 = true;
                                        coolantlevel3 = false;
                                      }),
                                    },
                                },
                              ),
                            ),
                            SizedBox(height: 5),
                            Checkbox(
                              value: coolantlevel3,
                              onChanged: (value) => {
                                if (value!)
                                  {
                                    setState(() {
                                      coolantlevel1 = false;
                                      coolantlevel2 = false;
                                      coolantlevel3 = true;
                                    }),
                                  },
                              },
                            ),

                            SizedBox(height: 30),
                          ],
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

  void CoolantLevelColourVisiblity() {
    setState(() {
      CoolantLevel_compartment = !CoolantLevel_compartment;
    });

    if (CoolantLevel_compartment) {
      setState(() {
        CoolantLevel = Icons.keyboard_arrow_up_rounded;
      });
    } else {
      setState(() {
        CoolantLevel = Icons.keyboard_arrow_down_rounded;
      });
    }
  }
}
