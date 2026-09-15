import 'package:flutter/material.dart';
import 'package:vehicle_checkup/addcheckup%20redign/Needle/average.dart';
import 'package:vehicle_checkup/addcheckup%20redign/Needle/bad.dart';
import 'package:vehicle_checkup/addcheckup%20redign/Needle/danger.dart';
import 'package:vehicle_checkup/addcheckup%20redign/Needle/good.dart';
import 'package:vehicle_checkup/addcheckup%20redign/Needle/verylow.dart';
import 'package:vehicle_checkup/addcheckup%20redign/widgets/imagevisible.dart';
import 'package:vehicle_checkup/addcheckup%20redign/widgets/values.dart';
import 'package:vehicle_checkup/view_checkup/widgets/needles/average.dart';

IconData enginelevelicon = Icons.keyboard_arrow_down_rounded;
bool enginelevelmaincompartment = true;

class EngineOilLevelRedign extends StatefulWidget {
  const EngineOilLevelRedign({super.key});

  @override
  State<EngineOilLevelRedign> createState() => _EngineOilLevelRedignState();
}

class _EngineOilLevelRedignState extends State<EngineOilLevelRedign> {
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
              height: 75,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: getwidthofheader(),
                      child: Text(
                        "Engine oil level",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight(800),
                          fontSize: getFontSizee(),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          enginelevelmaincompartment =
                              !enginelevelmaincompartment;
                        });
                      },
                      icon: Icon(
                        enginelevelicon,
                        size: 46,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: enginelevelmaincompartment,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          AddCheckupImage(
                            height: getHeight(),
                            imagepath:
                                "lib/addcheckup/widgets/photos/engineoil.jpg",
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(getLeft(), getheightadd(), 0, 0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    GoodNeedleAddCheckup(),
                                    SizedBox(
                                      height: 5,
                                      child: Checkbox(
                                        value: redignengineoillevel1,
                                        activeColor: Colors.black,
                                        onChanged: (value) {},
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    AverageNeedleAddCheckup(),
                                    SizedBox(
                                      height: 5,
                                      child: Checkbox(
                                        value: redignengineoillevel1,
                                        activeColor: Colors.black,
                                        onChanged: (value) {},
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    LowNeedleAddCheckup(),
                                    SizedBox(
                                      height: 5,
                                      child: Checkbox(
                                        value: redignengineoillevel1,
                                        activeColor: Colors.black,
                                        onChanged: (value) {},
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    VeryLowNeedleAddCheckup(),
                                    SizedBox(
                                      height: 5,
                                      child: Checkbox(
                                        value: redignengineoillevel1,
                                        activeColor: Colors.black,
                                        onChanged: (value) {},
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    DangerNeedleAddCheckup(),
                                    SizedBox(
                                      height: 5,
                                      child: Checkbox(
                                        value: redignengineoillevel1,
                                        activeColor: Colors.black,
                                        onChanged: (value) {},
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  double? getFontSizee() {
    var width = MediaQuery.widthOf(context);
    print(width);
    print(width);

    width = width * 0.0651041667;

    return width;
  }

  double? getwidthofheader() {
    var width = MediaQuery.widthOf(context);

    width = width * 0.70;

    print(width);

    return width;
  }

  double getHeight() {
    var width = MediaQuery.widthOf(context);

    print("height $width");

    width = width * 0.09375;

    return width;
  }

  double getLeft() {
    var height = MediaQuery.heightOf(context);

    height = height * 0.02163461538;

    print(height);

    return height;
  }

  double getheightadd() {
    var width = MediaQuery.widthOf(context);

    print("height $width");
    width = width * 0.338;

    return width;
  }
}
