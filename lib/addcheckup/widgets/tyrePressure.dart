import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

class Tyrepressure extends StatefulWidget {
  const Tyrepressure({super.key});

  @override
  State<Tyrepressure> createState() => TyrepressureState();
}

class TyrepressureState extends State<Tyrepressure> {
  IconData tyrepressure = Icons.keyboard_arrow_down_rounded;
  bool tyrepressurecompartment = false;

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
                    "Tyre Pressure",
                    style: TextStyle(fontWeight: FontWeight(800), fontSize: fontsize(context)),
                  ),
                ),
                IconButton(
                  onPressed: () => TyrePressureVisiblity(),
                  icon: Icon(tyrepressure, size: 30),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.white,
          ),
          child: Visibility(
            visible: tyrepressurecompartment,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    child: Image.asset(
                      "lib/addcheckup/widgets/photos/AirPressure.png",
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    child: TextField(
                      controller: tyrefillingDate,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hint: Text("Filling Date"),
                      ),
                      readOnly: true,
                      onTap: () => showDate(),
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    child: TextField(
                      controller: tyrefillingpressure,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hint: Text("Filling Pressure"),
                      ),
                      onSubmitted: (value) {
                        if (double.parse(value) < 50 ||
                            double.parse(value) > 130) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(
                                  "VEHICLE TYRE PRESSURE SHOULD BE BETWEEN 50 AND 130 PSI",
                                ),
                              );
                            },
                          );

                          tyrefillingpressure.text = "50";
                        }
                      },
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: false,
                        signed: false,
                      ),
                      readOnly: false,
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

  void TyrePressureVisiblity() {
    setState(() {
      tyrepressurecompartment = !tyrepressurecompartment;
    });

    if (tyrepressurecompartment) {
      setState(() {
        tyrepressure = Icons.keyboard_arrow_up_rounded;
      });
    } else {
      setState(() {
        tyrepressure = Icons.keyboard_arrow_down_rounded;
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
        tyrefillingDate.text = datePicker.toString().split(" ")[0];
      });
    }
  }
}
