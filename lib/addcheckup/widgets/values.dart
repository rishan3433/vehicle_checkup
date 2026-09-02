// ignore_for_file: body_might_complete_normally_nullable, non_constant_identifier_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

bool engineoillevel1 = false;
bool engineoillevel2 = false;
bool engineoillevel3 = false;
bool engineoillevel4 = false;
bool engineoillevel5 = false;

bool engineoilcolour1 = false;
bool engineoilcolour2 = false;
bool engineoilcolour3 = false;

bool coolantlevel1 = false;
bool coolantlevel2 = false;
bool coolantlevel3 = false;

bool wiperWaterLevel1 = false;
bool wiperWaterLevel2 = false;
bool wiperWaterLevel3 = false;
bool wiperWaterLevel4 = false;
bool wiperWaterLevel5 = false;

bool brakeFluid1 = false;
bool brakeFluid2 = false;
bool brakeFluid3 = false;

bool batteryWater1 = false;
bool batteryWater2 = false;
bool batteryWater3 = false;

bool jackeyYes = false;
bool jackeyNo = false;

bool jackeyLeverYes = false;
bool jackeyLeverNo = false;

bool wheelspannerYes = false;
bool wheelspannerNo = false;

bool stepneyWheelYes = false;
bool stepneyWheelNo = false;

bool frontLightBrightLeft = false;
bool frontLightBrightRight = false;
bool frontLightdimLeft = false;
bool frontLightdimRight = false;
bool frontLightparkLeft = false;
bool frontLightparkRight = false;
bool frontLightindicatorLeft = false;
bool frontLightindicatorRight = false;

bool backLightBrakeLeft = false;
bool backLightBrakeRight = false;
bool backLightReverseLeft = false;
bool backLightReverseRight = false;
bool backLightparkLeft = false;
bool backLightparkRight = false;
bool backLightindicatorLeft = false;
bool backLightindicatorRight = false;

File? engineoilImage;
File? coolantImage;
File? wiperWaterImage;
File? brakeFluidImage;
File? batteryWaterImage;
File? greesingImage;
File? fBrightImage;
File? fDimImage;
File? fParkImage;
File? fIndicatorImage;
File? bBrightImage;
File? bbrakeImage;
File? bReverseImage;
File? bParkImage;
File? bIndicatorImage;
File? jackeyImage;
File? jackeyLeverImage;
File? wheelSpannerImage;
File? stepneyImage;
File? waterServiceImageFront;
File? waterServiceImageBack;
File? waterServiceImageLeft;
File? waterServiceImageRight;
bool battery = false;

bool enginebtn = true;

TextEditingController tyrefillingDate = TextEditingController();
TextEditingController tyrefillingpressure = TextEditingController();
TextEditingController greesingFillingDate = TextEditingController();
TextEditingController waterServiceFillingDate = TextEditingController();
TextEditingController wheelAlignmentLast = TextEditingController();
TextEditingController wheelAlignmentPresent = TextEditingController();

String usertype ="";
String logeduser ="";

Future<File?> GetImage(File? currentfile) async {
  if (currentfile == null) {
    ImagePicker picker = ImagePicker();

    final XFile? xFile = await picker.pickImage(source: ImageSource.camera);

    File? finalpath;

    if (xFile != null) {
      finalpath = File(xFile.path);
    }

    return finalpath;
  }
}

double? getWidth(BuildContext context) {
  var width = MediaQuery.widthOf(context);

  print("width  $width");

  width = width - 100;

  return width;
}

double? fontsize(BuildContext context){

  var width = MediaQuery.widthOf(context);

  var percentage =  width * 95;

  percentage = percentage / 100;

  percentage = width - percentage;

  return 24;
}
