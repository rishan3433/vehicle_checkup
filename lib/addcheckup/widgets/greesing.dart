import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

bool enginebtn = true;

class Greesing extends StatefulWidget {
  const Greesing({super.key});

  @override
  State<Greesing> createState() => _GreesingState();
}

class _GreesingState extends State<Greesing> {
  IconData Greesing = Icons.keyboard_arrow_down_rounded;
  bool Greesing_compartment = false;

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
                    "Greesing",
                    style: TextStyle(fontWeight: FontWeight(800), fontSize: fontsize(context)),
                  ),
                ),
                IconButton(
                  onPressed: () => GreesingVisiblity(),
                  icon: Icon(Greesing, size: 30),
                ),
              ],
            ),
          ),
        ),
        Visibility(
          visible: Greesing_compartment,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  width: 250,
                  child: Image.asset(
                    "lib/addcheckup/widgets/photos/Greeesing.png",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: SizedBox(
                    width: 250,
                    child: TextField(
                      controller: greesingFillingDate,
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
                  visible: enginebtn,
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
                          var Tempdata = await GetImage(greesingImage);
                          setState(() {
                            greesingImage = Tempdata;
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

  void GreesingVisiblity() {
    setState(() {
      Greesing_compartment = !Greesing_compartment;
    });

    if (Greesing_compartment) {
      setState(() {
        Greesing = Icons.keyboard_arrow_up_rounded;
      });
    } else {
      setState(() {
        Greesing = Icons.keyboard_arrow_down_rounded;
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
        greesingFillingDate.text = datePicker.toString().split(" ")[0];
      });
    }
  }
}
