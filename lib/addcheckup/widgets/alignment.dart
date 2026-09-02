import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

bool Referencebtn = true;

class wheelAlignment extends StatefulWidget {
  const wheelAlignment({super.key});

  @override
  State<wheelAlignment> createState() => _wheelAlignmentState();
}

class _wheelAlignmentState extends State<wheelAlignment> {
  IconData wheelAlignment = Icons.keyboard_arrow_down_rounded;
  bool wheelAlignment_compartment = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75,

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
                    "Wheel Alignment",
                    style: TextStyle(fontWeight: FontWeight(800), fontSize: 25),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      wheelAlignment_compartment = !wheelAlignment_compartment;

                      if (wheelAlignment_compartment) {
                        wheelAlignment = Icons.keyboard_arrow_up_rounded;
                      } else {
                        wheelAlignment = Icons.keyboard_arrow_down_rounded;
                      }
                    });
                  },
                  icon: Icon(wheelAlignment, size: 46),
                ),
              ],
            ),
          ),
        ),
        Visibility(
          visible: wheelAlignment_compartment,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  width: 180,
                  child: Image.asset(
                    "lib/addcheckup/widgets/photos/Alignment.jpg",
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: wheelAlignmentLast,
                    decoration: InputDecoration(border: UnderlineInputBorder(),hint: Text("Last Alignment KM")),
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: false,
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: wheelAlignmentPresent,
                    decoration: InputDecoration(border: UnderlineInputBorder(),hint: Text("Present KM")),
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: false,
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
}
