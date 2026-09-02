// ignore_for_file: must_be_immutable, dead_code

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dotted_border/dotted_border.dart'; 
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/Dashboard/Dashboard.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';
import 'package:week_of_year/date_week_extensions.dart';

class SubmitData extends StatefulWidget {
  SubmitData({super.key, required this.vehicleNo});

  String vehicleNo;

  @override
  State<SubmitData> createState() => _SubmitDataState();
}

class _SubmitDataState extends State<SubmitData> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: Center(
        child: SizedBox(
          width: 170,
          height: 45,
          child: DottedBorder(
            options: RoundedRectDottedBorderOptions(
              radius: Radius.circular(10),
              padding: EdgeInsets.all(3),
            ),

            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color?>(Colors.amber),
                shape: WidgetStatePropertyAll<RoundedRectangleBorder?>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(8)),
                  ),
                ),
              ),
              onPressed: () async {
                insertData(widget.vehicleNo);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Submit", style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void insertData(String vehicleNo) async {
    String datewithouthighfen = "";
    String currentdatewith = "";
    DateTime dateTime = DateTime.now();

    String yearandweek = dateTime.year.toString() + dateTime.weekOfYear.toString();

    int currentvehicleweeekday = 0;

    var weekday = await FirebaseFirestore.instance
        .collection("DUE_VEHICLE")
        .doc(widget.vehicleNo)
        .get();

    if (weekday.exists) {
      setState(() {
        currentvehicleweeekday = weekday["weekday"];
      });
    }

    setState(() {
      if (dateTime.day < 10) {
        currentdatewith = "0${dateTime.day}-";
      } else {
        currentdatewith = "${dateTime.day}-";
      }
      if (dateTime.month < 10) {
        currentdatewith = "${currentdatewith}0${dateTime.month}-";
      } else {
        currentdatewith = currentdatewith + dateTime.month.toString();
      }
      currentdatewith = "$currentdatewith${dateTime.year}";
    });

    setState(() {
      datewithouthighfen = "$datewithouthighfen${dateTime.year}";

      if (dateTime.month < 10) {
        datewithouthighfen = "${datewithouthighfen}0${dateTime.month}";
      } else {
        datewithouthighfen = datewithouthighfen + dateTime.month.toString();
      }

      if (dateTime.day < 10) {
        datewithouthighfen = "${datewithouthighfen}0${dateTime.day}";
      } else {
        datewithouthighfen = datewithouthighfen + dateTime.day.toString();
      }
    });

    print("curent date $datewithouthighfen");
    print("curent date $currentdatewith");

    bool engine_oil = false,
        engine_oil_colour = false,
        coolant = false,
        wiper_water = false,
        brakefluid = false,
        batterywater = false,
        tyre = false,
        greesing = false,
        jackey = false,
        jackeylever = false,
        wheelspanner = false,
        stepney = false,
        waterservice = false,
        alignment = false,
        images = true,
        completed1 = false,
        completed3 = false,
        completed2 = false;

    if (engineoillevel1 ||
        engineoillevel2 ||
        engineoillevel3 ||
        engineoillevel4 ||
        engineoillevel5) {
      setState(() {
        engine_oil = true;
      });
    }

    if (engineoilcolour1 || engineoilcolour2 || engineoilcolour3) {
      setState(() {
        engine_oil_colour = true;
      });
    }

    if (coolantlevel1 || coolantlevel2 || coolantlevel3) {
      setState(() {
        coolant = true;
      });
    }

    if (wiperWaterLevel1 ||
        wiperWaterLevel2 ||
        wiperWaterLevel3 ||
        wiperWaterLevel4 ||
        wiperWaterLevel5) {
      setState(() {
        wiper_water = true;
      });
    }

    if (brakeFluid1 || brakeFluid2 || brakeFluid3) {
      setState(() {
        brakefluid = true;
      });
    }

    if (batteryWater1 || batteryWater2 || batteryWater3) {
      setState(() {
        batterywater = true;
      });
    }

    if (tyrefillingDate.text.isNotEmpty &&
        tyrefillingpressure.text.isNotEmpty) {
      setState(() {
        tyre = true;
      });
    }

    if (greesingFillingDate.text.isNotEmpty) {
      setState(() {
        greesing = true;
      });
    }

    if (jackeyYes || jackeyNo) {
      jackey = true;
    }

    if (jackeyLeverYes || jackeyLeverNo) {
      jackeylever = true;
    }

    if (wheelspannerYes || wheelspannerNo) {
      wheelspanner = true;
    }

    if (stepneyWheelYes || stepneyWheelNo) {
      stepney = true;
    }

    if (waterServiceFillingDate.text.isNotEmpty) {
      waterservice = true;
    }

    if (wheelAlignmentLast.text.isNotEmpty &&
        wheelAlignmentPresent.text.isNotEmpty) {
      alignment = true;
    }

    if (engineoilImage != null &&
        coolantImage != null &&
        wiperWaterImage != null &&
        brakeFluidImage != null &&
        batteryWaterImage != null &&
        greesingImage != null &&
        fBrightImage != null &&
        fDimImage != null &&
        fParkImage != null &&
        fIndicatorImage != null &&
        bBrightImage != null &&
        bbrakeImage != null &&
        bReverseImage != null &&
        bParkImage != null &&
        bIndicatorImage != null &&
        jackeyImage != null &&
        jackeyLeverImage != null &&
        wheelSpannerImage != null &&
        stepneyImage != null &&
        waterServiceImageFront != null &&
        waterServiceImageBack != null &&
        waterServiceImageLeft != null &&
        waterServiceImageRight != null) {
      images = true;
    }

    if (engine_oil &&
        engine_oil_colour &&
        coolant &&
        wiper_water &&
        brakefluid &&
        batterywater &&
        tyre &&
        greesing &&
        jackey &&
        jackeylever &&
        wheelspanner &&
        stepney &&
        images&&
        waterservice &&
        alignment) {
      Map<String, dynamic> firebasedata = {
        "engineoillevel1": engineoillevel1,
        "engineoillevel2": engineoillevel2,
        "engineoillevel3": engineoillevel3,
        "engineoillevel4": engineoillevel4,
        "engineoillevel5": engineoillevel5,

        "engineoilcolour1": engineoilcolour1,
        "engineoilcolour2": engineoilcolour2,
        "engineoilcolour3": engineoilcolour3,

        "coolantlevel1": coolantlevel1,
        "coolantlevel2": coolantlevel2,
        "coolantlevel3": coolantlevel3,

        "wiperwaterlevel1": wiperWaterLevel1,
        "wiperwaterlevel2": wiperWaterLevel2,
        "wiperwaterlevel3": wiperWaterLevel3,
        "wiperwaterlevel4": wiperWaterLevel4,
        "wiperwaterlevel5": wiperWaterLevel5,

        "brakefluidlevel1": brakeFluid1,
        "brakefluidlevel2": brakeFluid2,
        "brakefluidlevel3": brakeFluid3,

        "batterywaterlevel1": batteryWater1,
        "batterywaterlevel2": batteryWater2,
        "batterywaterlevel3": batteryWater3,

        "headBrightLeft": frontLightBrightLeft,
        "headBrightRight": frontLightBrightRight,

        "headDimLeft": frontLightdimLeft,
        "headDimRight": frontLightdimRight,

        "headParkLeft": frontLightparkLeft,
        "headParkRight": frontLightparkRight,

        "headIndicatorLeft": frontLightindicatorLeft,
        "headIndicatorRight": frontLightindicatorRight,

        "tailBrightLeft": backLightBrakeLeft,
        "tailBrightRight": backLightBrakeRight,

        "tailReverseLeft": backLightReverseLeft,
        "tailReverseRight": backLightReverseRight,

        "tailParkLeft": backLightparkLeft,
        "tailParkRight": backLightparkRight,

        "tailIndicatorLeft": backLightindicatorLeft,
        "tailIndicatorRight": backLightindicatorRight,

        "jackeyyes": jackeyYes,
        "jackeyno": jackeyNo,

        "jackeyleveryes": jackeyLeverYes,
        "jackeyleverno": jackeyLeverNo,

        "wheelspanneryes": wheelspannerYes,
        "wheelspannerno": wheelspannerNo,

        "stepneywheelyes": stepneyWheelYes,
        "stepneywheelno": stepneyWheelNo,

        "waterservicedate": waterServiceFillingDate.text,

        "alignmentlast": wheelAlignmentLast.text,
        "alignmentpresent": wheelAlignmentPresent.text,

        "tyrefillingdate": tyrefillingDate.text,
        "tyrefillingpressure": tyrefillingpressure.text,

        "greesingfillingdate": greesingFillingDate.text,

        "servicedate": currentdatewith,
        "servicedatewithout": datewithouthighfen,
        "rectified": "YES",
        "vehiclenumber": widget.vehicleNo,
        "yearandweek": yearandweek,
        "score": "100",
      };

      int nextweekforservice = dateTime.weekOfYear;

      nextweekforservice = nextweekforservice + 1;

      Map<String, dynamic> due_vehicle = {
        "nextweek": nextweekforservice,
        "weekday": currentvehicleweeekday,
      };

      FirebaseFirestore.instance
          .collection(widget.vehicleNo)
          .doc(currentdatewith)
          .set(firebasedata)
          .whenComplete(() {
            setState(() {
              completed1 = true;
            });
          });
      FirebaseFirestore.instance
          .collection("Vehicle_Details")
          .doc("$currentdatewith${widget.vehicleNo}")
          .set(firebasedata)
          .whenComplete(() {
            setState(() {
              completed2 = true;
              // if (completed1 && completed2 && completed3) {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) {
              //         return Dashboard(user: usertype);
              //       },
              //     ),
              //   );
              // }
            });
          });

      FirebaseFirestore.instance
          .collection("DUE_VEHICLE")
          .doc(widget.vehicleNo)
          .set(due_vehicle)
          .whenComplete(() {
            setState(() {
              completed3 = true;
              if (completed1 && completed2 && completed3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Dashboard(user: usertype);
                    },
                  ),
                );
              }
            });
          });
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Something is not entered please recheck everything"),
          );
        },
      );
    }
  }
}
