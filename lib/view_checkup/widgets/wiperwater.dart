import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';
import 'package:vehicle_checkup/view_checkup/widgets/header/textheader.dart';
IconData icon = Icons.keyboard_arrow_down_rounded;
bool viewWipervisible = false;
bool selectionare = true,photoarea = false;

class ViewWiperWater extends StatefulWidget {
  const ViewWiperWater({super.key});

  @override
  State<ViewWiperWater> createState() => _ViewWiperWaterState();
}

class _ViewWiperWaterState extends State<ViewWiperWater> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(8),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              color: Colors.amberAccent,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Padding(
              padding: EdgeInsetsGeometry.all(8),
              child: Row(
                children: [
                  SizedBox(
                    width: getWidth(context),
                    height: 75,
                    child: Textheader(text: "WIPER WATER"),
                  ),
                  IconButton(onPressed: (){
                    setState(() {
                      viewWipervisible = !viewWipervisible;
                      if (viewWipervisible) {
                        icon = Icons.keyboard_arrow_up_rounded;
                      }else{
                        icon = Icons.keyboard_arrow_down_rounded;

                      }
                    });
                  }, icon: Icon( icon,color: Colors.black,size: 46,))
                ],
              ),
            ),
          ),
          Visibility(visible: viewWipervisible, child: Column(
            children: [
              SizedBox(width: 150,
              child: Image.asset("lib/addcheckup/widgets/photos/WiperWater.png"),)
            ],
          ))
        ],
      ),
    );
  }
}
