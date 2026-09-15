// ignore_for_file: body_might_complete_normally_nullable, non_constant_identifier_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

bool redignengineoillevel1 = false;
bool redignengineoillevel2 = false;
bool redignengineoillevel3 = false;
bool redignengineoillevel4 = false;
bool redignengineoillevel5 = false;

bool redignengineoilcolour1 = false;
bool redignengineoilcolour2 = false;
bool redignengineoilcolour3 = false;

bool redigncoolantlevel1 = false;
bool redigncoolantlevel2 = false;
bool redigncoolantlevel3 = false;

bool redignwiperWaterLevel1 = false;
bool redignwiperWaterLevel2 = false;
bool redignwiperWaterLevel3 = false;
bool redignwiperWaterLevel4 = false;
bool redignwiperWaterLevel5 = false;

bool redignbrakeFluid1 = false;
bool redignbrakeFluid2 = false;
bool redignbrakeFluid3 = false;

bool redignbatteryWater1 = false;
bool redignbatteryWater2 = false;
bool redignbatteryWater3 = false;

bool redignjackeyYes = false;
bool redignjackeyNo = false;

bool redignjackeyLeverYes = false;
bool redignjackeyLeverNo = false;

bool redignwheelspannerYes = false;
bool redignwheelspannerNo = false;

bool redignstepneyWheelYes = false;
bool redignstepneyWheelNo = false;

bool redignfrontLightBrightLeft = false;
bool redignfrontLightBrightRight = false;
bool redignfrontLightdimLeft = false;
bool redignfrontLightdimRight = false;
bool redignfrontLightparkLeft = false;
bool redignfrontLightparkRight = false;
bool redignfrontLightindicatorLeft = false;
bool redignfrontLightindicatorRight = false;

bool redignbackLightBrakeLeft = false;
bool redignbackLightBrakeRight = false;
bool redignbackLightReverseLeft = false;
bool redignbackLightReverseRight = false;
bool redignbackLightparkLeft = false;
bool redignbackLightparkRight = false;
bool redignbackLightindicatorLeft = false;
bool redignbackLightindicatorRight = false;

File? redignengineoilImage;
File? redigncoolantImage;
File? redignwiperWaterImage;
File? redignbrakeFluidImage;
File? redignbatteryWaterImage;
File? redigngreesingImage;
File? redignfBrightImage;
File? redignfDimImage;
File? redignfParkImage;
File? redignfIndicatorImage;
File? redignbBrightImage;
File? redignbbrakeImage;
File? redignbReverseImage;
File? redignbParkImage;
File? redignbIndicatorImage;
File? redignjackeyImage;
File? redignjackeyLeverImage;
File? redignwheelSpannerImage;
File? redignstepneyImage;
File? redignwaterServiceImageFront;
File? redignwaterServiceImageBack;
File? redignwaterServiceImageLeft;
File? redignwaterServiceImageRight;
bool redignbattery = false;

bool redignenginebtn = true;

TextEditingController redigntyrefillingDate = TextEditingController();
TextEditingController redigntyrefillingpressure = TextEditingController();
TextEditingController redigngreesingFillingDate = TextEditingController();
TextEditingController redignwaterServiceFillingDate = TextEditingController();
TextEditingController redignwheelAlignmentLast = TextEditingController();
TextEditingController redignwheelAlignmentPresent = TextEditingController();

String redignusertype ="";
String redignlogeduser ="";

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
