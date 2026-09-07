// ignore_for_must_be_immutable

// ignore_for_file: must_be_immutable

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/Dashboard/Dashboard.dart';
import 'package:vehicle_checkup/Dashboard/widgets/appbar.dart';
import 'package:vehicle_checkup/addcheckup/widgets/Stepney%20Wheel.dart';
import 'package:vehicle_checkup/addcheckup/widgets/backLight.dart';
import 'package:vehicle_checkup/addcheckup/widgets/batteryWater.dart';
import 'package:vehicle_checkup/addcheckup/widgets/brakefluid.dart';
import 'package:vehicle_checkup/addcheckup/widgets/coolantLevel.dart';
import 'package:vehicle_checkup/addcheckup/widgets/engine_oil.dart';
import 'package:vehicle_checkup/addcheckup/widgets/engine_oil_colour.dart';
import 'package:vehicle_checkup/addcheckup/widgets/frontLight.dart';
import 'package:vehicle_checkup/addcheckup/widgets/greesing.dart';
import 'package:vehicle_checkup/addcheckup/widgets/jackey.dart';
import 'package:vehicle_checkup/addcheckup/widgets/jackeylever.dart';
import 'package:vehicle_checkup/addcheckup/widgets/submit.dart';
import 'package:vehicle_checkup/addcheckup/widgets/tyrePressure.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';
import 'package:vehicle_checkup/addcheckup/widgets/waterservice.dart';
import 'package:vehicle_checkup/addcheckup/widgets/wheelAlignment.dart';
import 'package:vehicle_checkup/addcheckup/widgets/wheelspanner.dart';
import 'package:vehicle_checkup/addcheckup/widgets/wiper_water.dart';
import 'package:vehicle_checkup/firebase_options.dart';

void main(List<String> args) async {
  runApp(Addcheckup(vehicleno: "KL 32 W 6490"));

  // ignore: await_only_futures
  await WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

class Addcheckup extends StatefulWidget {
  Addcheckup({super.key, required this.vehicleno});

  String vehicleno;

  @override
  State<Addcheckup> createState() => _AddcheckupState();
}

class _AddcheckupState extends State<Addcheckup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AddcheckupBody(vehicleno: widget.vehicleno));
  }
}

class AddcheckupBody extends StatefulWidget {
  AddcheckupBody({super.key, required this.vehicleno});

  String vehicleno;

  @override
  State<AddcheckupBody> createState() => AaddcheckupStateBody();
}

class AaddcheckupStateBody extends State<AddcheckupBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: Container(
          color: Colors.white,
          child: Row(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0,20,0.0,0.0),
                child: IconButton(onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Dashboard(user: logeduser);
                        },
                      ),
                    );
                }, icon: Icon(Icons.keyboard_arrow_left_rounded,color: Colors.black,size: 46,)),
              ),
              Appbar(text: widget.vehicleno),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: ListView(
            shrinkWrap: false,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 2,
                decoration: BoxDecoration(
                  border: BoxBorder.fromLTRB(top: BorderSide(width: 1)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(width: 1),
                  ),
                  child: EngineOil(),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(width: 1),
                  ),
                  child: EngineOilColour(),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(width: 1),
                  ),
                  child: Coolantlevel(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(width: 1),
                  ),
                  child: WiperWater(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(width: 1),
                  ),
                  child: Brakefluid(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(width: 1),
                  ),
                  child: Batterywater(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(width: 1),
                  ),
                  child: Tyrepressure(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(width: 1),
                  ),
                  child: Greesing(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(width: 1),
                  ),
                  child: Jackey(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(width: 1),
                  ),
                  child: JackeyLever(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(width: 1),
                  ),
                  child: Wheelspanner(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(width: 1),
                  ),
                  child: StepneyWheel(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(width: 1),
                  ),
                  child: Waterservice(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(width: 1),
                  ),
                  child: Wheelalignment(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(width: 1),
                  ),
                  child: Frontlight(),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(width: 1),
                  ),
                  child: BackLight(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(width: 1),
                  ),
                  child: SubmitData(vehicleNo: widget.vehicleno),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setdata() {
    setState(() {
      engineoillevel1 = false;
      engineoillevel2 = false;
      engineoillevel3 = false;
      engineoillevel4 = false;
      engineoillevel5 = false;

      engineoilcolour1 = false;
      engineoilcolour2 = false;
      engineoilcolour3 = false;

      coolantlevel1 = false;
      coolantlevel2 = false;
      coolantlevel3 = false;

      wiperWaterLevel1 = false;
      wiperWaterLevel2 = false;
      wiperWaterLevel3 = false;
      wiperWaterLevel4 = false;
      wiperWaterLevel5 = false;

      brakeFluid1 = false;
      brakeFluid2 = false;
      brakeFluid3 = false;

      batteryWater1 = false;
      batteryWater2 = false;
      batteryWater3 = false;

      jackeyYes = false;
      jackeyNo = false;

      jackeyLeverYes = false;
      jackeyLeverNo = false;

      wheelspannerYes = false;
      wheelspannerNo = false;

      stepneyWheelYes = false;
      stepneyWheelNo = false;

      frontLightBrightLeft = false;
      frontLightBrightRight = false;
      frontLightdimLeft = false;
      frontLightdimRight = false;
      frontLightparkLeft = false;
      frontLightparkRight = false;
      frontLightindicatorLeft = false;
      frontLightindicatorRight = false;

      backLightBrakeLeft = false;
      backLightBrakeRight = false;
      backLightReverseLeft = false;
      backLightReverseRight = false;
      backLightparkLeft = false;
      backLightparkRight = false;
      backLightindicatorLeft = false;
      backLightindicatorRight = false;

      engineoilImage = null;
      coolantImage = null;
      wiperWaterImage = null;
      brakeFluidImage = null;
      batteryWaterImage = null;
      greesingImage = null;
      fBrightImage = null;
      fDimImage = null;
      fParkImage = null;
      fIndicatorImage = null;
      bBrightImage = null;
      bbrakeImage = null;
      bReverseImage = null;
      bParkImage = null;
      bIndicatorImage = null;
      jackeyImage = null;
      jackeyLeverImage = null;
      wheelSpannerImage = null;
      stepneyImage = null;
      waterServiceImageFront = null;
      waterServiceImageBack = null;
      waterServiceImageLeft = null;
      waterServiceImageRight = null;
      battery = false;

      tyrefillingDate = TextEditingController();
      tyrefillingpressure = TextEditingController();
      greesingFillingDate = TextEditingController();
      waterServiceFillingDate = TextEditingController();
      wheelAlignmentLast = TextEditingController();
      wheelAlignmentPresent = TextEditingController();
    });
  }
}
