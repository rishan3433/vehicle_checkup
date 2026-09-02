import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart'; 
import 'package:vehicle_checkup/Dashboard/widgets/vehicle%20List.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart'; 
import 'package:vehicle_checkup/firebase_options.dart'; 
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: must_be_immutable
class LastcheckupListView extends StatefulWidget {
  LastcheckupListView({super.key, required this.user,required this.vehcilerectified,required this.vehiclenumber,required this.vehiclescore,required this.vehicleservicedate});

  String user;
  List<String> vehiclenumber,vehicleservicedate,vehiclescore,vehcilerectified;

  @override
  State<LastcheckupListView> createState() => _LastcheckupListViewState();
}

class _LastcheckupListViewState extends State<LastcheckupListView> {   

  // ignore: non_constant_identifier_names
  bool VehicleList = false;

  String vehicleno = "Vehicle_Details";

  @override
  void initState() { 
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Last Checkup",
          style: TextStyle(
            fontFamily: "Anton",
            fontSize: fontsize(context),
            fontWeight: FontWeight(800),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: false,
              itemCount: widget.vehiclenumber.length,
              itemBuilder: (context, index) => listitems(index, context),
            ),
          ),
        ),
      ],
    );
  }

  Widget listitems(int index, BuildContext context) {
    String no = widget.vehiclenumber[index];
    String rectified = widget.vehcilerectified[index];
    String date = widget.vehicleservicedate[index];
    String score = widget.vehiclescore[index];

    Widget data = Card();

    if (no == "KL 32 T 4054") {
      data = Padding(
        padding: const EdgeInsets.all(8.0),
        child: KL32T4054(date: date, rectified: rectified, score: score),
      );
    } else if (no == "KL 32 U 6490") {
      data = Padding(
        padding: const EdgeInsets.all(8.0),
        child: KL32U6490(date: date, rectified: rectified, score: score),
      );
    } else if (no == "KL 32 N 4471") {
      data = Padding(
        padding: const EdgeInsets.all(8.0),
        child: KL32N4471(date: date, rectified: rectified, score: score),
      );
    } else if (no == "KL 32 W 6490") {
      data = Padding(
        padding: const EdgeInsets.all(8.0),
        child: KL32W6490(date: date, rectified: rectified, score: score),
      );
    } else if (no == "KL 32 S 9973") {
      data = Padding(
        padding: const EdgeInsets.all(8.0),
        child: KL32S9973(date: date, rectified: rectified, score: score),
      );
    } else if (no == "KL 32 Q 9658") {
      data = Padding(
        padding: const EdgeInsets.all(8.0),
        child: KL32Q9658(date: date, rectified: rectified, score: score),
      );
    } else if (no == "KL 43 F 7150") {
      data = Padding(
        padding: const EdgeInsets.all(8.0),
        child: KL43F7150(date: date, rectified: rectified, score: score),
      );
    }else if (no == "KL 32 U 4054") {
      data = Padding(
        padding: const EdgeInsets.all(8.0),
        child: KL32U4054(date: date, rectified: rectified, score: score),
      );
    }

    return data;
  }

  void getFirebaseData() async {
    // ignore: unused_local_variable
    String usertypefromdb = "Administrator";

    // ignore: await_only_futures
    await WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    var usertype = await FirebaseFirestore.instance
        .collection("User")
        .doc(widget.user)
        .get();

    if (usertype.exists) {
      setState(() {
        vehicleno = usertype["vehicle_attached"];
        usertypefromdb = usertype["user_type"]; 
      });
    }

    var db = await FirebaseFirestore.instance
        .collection(vehicleno)
        .orderBy("servicedate", descending: true)
        .get();

    for (var doc in db.docs) {
      widget.vehiclenumber.add(doc["vehiclenumber"]);
      widget.vehicleservicedate.add(doc["servicedate"]);
      widget.vehcilerectified.add(doc["rectified"]);
      widget.vehiclescore.add("${doc["score"]}%");
    }

    setState(() {
      VehicleList = true;
    });
  }
}
