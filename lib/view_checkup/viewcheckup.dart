// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/Dashboard/Dashboard.dart';
import 'package:vehicle_checkup/Dashboard/widgets/appbar.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';
import 'package:vehicle_checkup/firebase_options.dart';
import 'package:vehicle_checkup/view_checkup/widgets/Batterywater.dart';
import 'package:vehicle_checkup/view_checkup/widgets/brakefluid.dart';
import 'package:vehicle_checkup/view_checkup/widgets/coolantLevel.dart';
import 'package:vehicle_checkup/view_checkup/widgets/engineoil.dart';
import 'package:vehicle_checkup/view_checkup/widgets/engineoilcolor.dart';
import 'package:vehicle_checkup/view_checkup/widgets/existing_values.dart';
import 'package:vehicle_checkup/view_checkup/widgets/wiperwater.dart';

void main(List<String> args) async {
  await WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(Viewcheckup(documentid: "27-08-2026", vehicleNumber: "KL 32 T 4054"));

  logeduser = "KL 32 W 6490";
}

class Viewcheckup extends StatefulWidget {
  Viewcheckup({
    super.key,
    required this.documentid,
    required this.vehicleNumber,
  });

  String documentid, vehicleNumber;

  @override
  State<Viewcheckup> createState() => _ViewcheckupState();
}

class _ViewcheckupState extends State<Viewcheckup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Viewcheckupbody(
        documentid: widget.documentid,
        vehicleNumber: widget.vehicleNumber,
      ),
    );
  }
}

class Viewcheckupbody extends StatefulWidget {
  Viewcheckupbody({
    super.key,
    required this.documentid,
    required this.vehicleNumber,
  });
  String documentid, vehicleNumber;
  @override
  State<Viewcheckupbody> createState() => _ViewcheckupbodyState();
}

class _ViewcheckupbodyState extends State<Viewcheckupbody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getfirebase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(125),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 30, 30, 8),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Dashboard(user: logeduser);
                              },
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.keyboard_arrow_left_rounded,
                          size: 46,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Appbar(text: widget.vehicleNumber),
                  ],
                ),
              ),
              Divider(color: Colors.black),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Visibility(
                visible: mainarea,
                child: SizedBox(
                  height: getheight(),
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      ViewEngineoil(),
                      ViewEngineoilcolor(),
                      ViewCoolantlevel(),
                      ViewWiperWater(),
                      ViewBrakefluid(),
                      ViewBatteryWater(),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: submainarea,
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          mainarea = true;
                          submainarea = false;
                        });
                      },
                      icon: Icon(Icons.keyboard_arrow_left_rounded),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: showImage == null
                          ? Visibility(visible: false, child: Text("data"))
                          : Image.file(showImage!),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getfirebase() async {
    var data = await FirebaseFirestore.instance
        .collection("Vehicle_Details")
        .doc(widget.documentid + widget.vehicleNumber)
        .get();

    if (data.exists) {
      setState(() {
        preengineoillevel1 = data["engineoillevel1"];
        preengineoillevel2 = data["engineoillevel2"];
        preengineoillevel3 = data["engineoillevel3"];
        preengineoillevel4 = data["engineoillevel4"];
        preengineoillevel5 = data["engineoillevel5"];

        preengineoilcolour1 = data["engineoilcolour1"];
        preengineoilcolour2 = data["engineoilcolour2"];
        preengineoilcolour3 = data["engineoilcolour3"];

        precoolantlevel1 = data["coolantlevel1"];
        precoolantlevel2 = data["coolantlevel2"];
        precoolantlevel3 = data["coolantlevel3"];

        prewiperWaterLevel1 = data["wiperwaterlevel1"];
        prewiperWaterLevel2 = data["wiperwaterlevel2"];
        prewiperWaterLevel3 = data["wiperwaterlevel3"];
        prewiperWaterLevel4 = data["wiperwaterlevel4"];
        prewiperWaterLevel5 = data["wiperwaterlevel5"];

        prebrakeFluid1 = data["brakefluidlevel1"];
        prebrakeFluid2 = data["brakefluidlevel2"];
        prebrakeFluid3 = data["brakefluidlevel3"];

        prebatteryWater1 = data["batterywaterlevel1"];
        prebatteryWater2 = data["batterywaterlevel2"];
        prebatteryWater3 = data["batterywaterlevel3"];

        prejackeyYes = data["jackeyyes"];
        prejackeyNo = data["jackeyno"];

        prejackeyLeverYes = data["jackeyleveryes"];
        prejackeyLeverNo = data["jackeyleverno"];

        prewheelspannerYes = data["wheelspanneryes"];
        prewheelspannerNo = data["wheelspannerno"];

        prestepneyWheelYes = data["stepneywheelyes"];
        prestepneyWheelNo = data["stepneywheelno"];

        prefrontLightBrightLeft = data["headBrightLeft"];
        prefrontLightBrightRight = data["headBrightRight"];
        prefrontLightdimLeft = data["headDimLeft"];
        prefrontLightdimRight = data["headDimRight"];
        prefrontLightparkLeft = data["headParkLeft"];
        prefrontLightparkRight = data["headParkRight"];
        prefrontLightindicatorLeft = data["headIndicatorLeft"];
        prefrontLightindicatorRight = data["headIndicatorRight"];

        prebackLightBrakeLeft = data["tailBrightLeft"];
        prebackLightBrakeRight = data["tailBrightRight"];
        prebackLightReverseLeft = data["tailReverseLeft"];
        prebackLightReverseRight = data["tailReverseRight"];
        prebackLightparkLeft = data["tailParkLeft"];
        prebackLightparkRight = data["tailParkRight"];
        prebackLightindicatorLeft = data["tailIndicatorLeft"];
        prebackLightindicatorRight = data["tailIndicatorRight"];

        prewaterServiceFillingDate.text == data["waterservicedate"];

        prewheelAlignmentLast.text = data["alignmentlast"];
        prewheelAlignmentPresent.text = data["alignmentlast"];

        pretyrefillingDate.text = data['tyrefillingdate'];
        pretyrefillingpressure.text = data['tyrefillingpressure'];

        pregreesingFillingDate.text = data["greesingfillingdate"];

        mainarea = true;
      });
    }
  }

  double? getheight() {
    var height = MediaQuery.heightOf(context);
    return height - 180;
  }
}
