import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart'; 
import 'package:vehicle_checkup/view_checkup/widgets/existing_values.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/average.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/danger.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/good.dart';

IconData engine_colour_compartment = Icons.keyboard_arrow_down_rounded;
bool engineoilcolorvisibility = false;

class ViewEngineoilcolor extends StatefulWidget {
  const ViewEngineoilcolor({super.key});

  @override
  State<ViewEngineoilcolor> createState() => VviewEngineoilcolorState();
}

class VviewEngineoilcolorState extends State<ViewEngineoilcolor> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: getWidth(context),
                      child: Text(
                        "Engine Oil Colour",
                        style: TextStyle(
                          fontSize: fontsize(context),
                          fontWeight: FontWeight(800),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          engineoilcolorvisibility = !engineoilcolorvisibility;

                          if (engineoilcolorvisibility) {
                            engine_colour_compartment =
                                Icons.keyboard_arrow_up_rounded;
                          } else {
                            engine_colour_compartment =
                                Icons.keyboard_arrow_down_rounded;
                          }
                        });
                      },
                      icon: Icon(
                        engine_colour_compartment,
                        size: 46,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: engineoilcolorvisibility,
              child: Padding(
                padding: EdgeInsetsGeometry.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Goodneedleview(value: preengineoilcolour1),
                        
                      ],
                    ),
                    SizedBox(height: 35,),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            shape: BoxShape.circle,
                          ),
                        ),
                        Averageneedleview(value: preengineoilcolour2,),
                      ],
                    ),
                    SizedBox(height: 35,),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Dangerneedleview(value: preengineoilcolour3)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
