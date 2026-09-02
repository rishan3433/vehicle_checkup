import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';

class Wheelalignment extends StatefulWidget {
  const Wheelalignment({super.key});

  @override
  State<Wheelalignment> createState() => _WheelalignmentState();
}

class _WheelalignmentState extends State<Wheelalignment> {
  IconData openbuttomIcon = Icons.keyboard_arrow_down_rounded;
  bool wheelalignmentCompartment = false;

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
                    "Wheel Alignment",
                    style: TextStyle(fontWeight: FontWeight(800), fontSize: fontsize(context)),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      wheelalignmentCompartment = !wheelalignmentCompartment;

                      if (wheelalignmentCompartment) {
                        openbuttomIcon = Icons.keyboard_arrow_up_rounded;
                      } else {
                        openbuttomIcon = Icons.keyboard_arrow_down_rounded;
                      }
                    });
                  },
                  icon: Icon(openbuttomIcon, size: 30),
                ),
              ],
            ),
          ),
        ),

        Visibility(
          visible: wheelalignmentCompartment,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  width: 200,
                  child: Image.asset(
                    "lib/addcheckup/widgets/photos/Alignment.jpg",
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: wheelAlignmentLast,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hint: Text("Last Alignment KM "),
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: wheelAlignmentPresent,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hint: Text("Present Alignment KM "),
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
