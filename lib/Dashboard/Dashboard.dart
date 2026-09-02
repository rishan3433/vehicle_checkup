import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/Dashboard/widgets/due_vehiclelist.dart';
import 'package:vehicle_checkup/Dashboard/widgets/lastcheckup.dart';
import 'package:vehicle_checkup/Dashboard/widgets/appbar.dart';
import 'package:vehicle_checkup/addcheckup/addcheckup.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart';
import 'package:vehicle_checkup/firebase_options.dart';
import 'package:week_of_year/week_of_year.dart';
import 'package:indexed_list_view/indexed_list_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main(List<String> args) {
  runApp(Dashboard(user: "ADMIN"));
}

// ignore: must_be_immutable
class Dashboard extends StatelessWidget {
  Dashboard({super.key, required this.user});

  String user;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Dashboardbody(user: user));
  }
}

// ignore: must_be_immutable
class Dashboardbody extends StatefulWidget {
  Dashboardbody({super.key, required this.user});
  String user;

  @override
  State<Dashboardbody> createState() => _DashboardbodyState();
}

class _DashboardbodyState extends State<Dashboardbody> {
  List<String> vehiclenumber = [];
  List<String> vehicleservicedate = [];
  List<String> vehiclescore = [];
  List<String> vehcilerectified = [];

  List<String> vehiclenumberdue = [];
  List<int> nextserviceweek = [];
  List<int> nextserviceweekday = [];

  bool mainscreen = false;
  bool addcheckup = false;
  bool floatingbtn = true;

  bool vehiclelist = false;

  var duelistcontroller = IndexedScrollController();

  String vehicleno = "Vehicle_Details";

  @override
  void initState() {
    super.initState();
    getFirebaseData();

    setState(() {
      usertype = widget.user;
      logeduser = widget.user;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: Appbar(text: "DASHBOARD"),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: getheight(),
          color: Color.fromRGBO(254, 206, 87, 100),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Stack(
              children: [
                ListView(
                  shrinkWrap: false,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Visibility(
                      visible: vehiclelist,
                      child: LastcheckupListView(
                        user: widget.user,
                        vehcilerectified: vehcilerectified,
                        vehiclenumber: vehiclenumber,
                        vehiclescore: vehiclescore,
                        vehicleservicedate: vehicleservicedate,
                      ),
                    ),
                    Visibility(
                      visible: vehiclelist,
                      child: DueVehiclelist(
                        nextserviceweek: nextserviceweek,
                        nextserviceweekday: nextserviceweekday,
                        vehiclenumberdue: vehiclenumberdue,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(8), child: Container()),
                  ],
                ),
                Visibility(
                  visible: addcheckup,
                  child: Center(
                    child: Container(
                      width: 300,
                      height: 470,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.red,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    addcheckup = !addcheckup;
                                    floatingbtn = !floatingbtn;
                                  });
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 50),
                              Text(
                                "Add Checkup",
                                style: TextStyle(
                                  fontFamily: "Anton",
                                  fontSize: fontsize(context),
                                  fontWeight: FontWeight(800),
                                ),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: double.infinity,
                              height: 390,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                color: const Color.fromARGB(255, 181, 47, 38),
                              ),
                              child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: false,
                                itemCount: vehiclenumberdue.length,
                                itemBuilder: (context, index) =>
                                    addvehiclecheckup(index, context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Visibility(
        visible: floatingbtn,
        child: FloatingActionButton(
          onPressed: () {
            showaddcheckup();
          },
          backgroundColor: Colors.red,
          child: Icon(Icons.add, size: 28, color: Colors.white),
        ),
      ),
    );
  }

  double? getheight() {
    double size = MediaQuery.heightOf(context);

    size = size - 75;

    return size;
  }

  void showaddcheckup() {
    setState(() {
      addcheckup = !addcheckup;
      floatingbtn = !floatingbtn;
    });
  }

  Widget addvehiclecheckup(int index, BuildContext context) {
    Widget addwidget = Card();

    DateTime currentdaynow = DateTime.now();

    int currentweek = currentdaynow.weekOfYear;
    int currentday = currentdaynow.weekday;
    int nextwek = nextserviceweek[index];
    int nextday = nextserviceweekday[index];

    if (currentday >= nextday) {
      if (currentweek >= nextwek) {
        addwidget = TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.black, // Text and icon color
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Addcheckup(vehicleno: vehiclenumberdue[index]);
                },
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: double.infinity,
              height: 35,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.all(Radius.circular(7)),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  vehiclenumberdue[index],
                  style: TextStyle(
                    fontFamily: "Anton",
                    fontWeight: FontWeight(900),
                  ),
                ),
              ),
            ),
          ),
        );
      }
    }

    return addwidget;
  }

  void getFirebaseData() async {
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
        .orderBy("servicedatewithout", descending: true)
        .get();

    var dbduefull = await FirebaseFirestore.instance
        .collection("DUE_VEHICLE")
        .get();

    var dbduesingle = await FirebaseFirestore.instance
        .collection("DUE_VEHICLE")
        .doc(vehicleno)
        .get();

    if (usertypefromdb == "Driver") {
      if (dbduesingle.exists) {
        vehiclenumberdue.add(dbduesingle.id);
        nextserviceweek.add(dbduesingle["nextweek"]);
        nextserviceweekday.add(dbduesingle["weekday"]);
      }
    } else {
      for (var duefull in dbduefull.docs) {
        vehiclenumberdue.add(duefull.id);
        nextserviceweek.add(duefull["nextweek"]);
        nextserviceweekday.add(duefull["weekday"]);
      }
    }

    for (var doc in db.docs) {
      vehiclenumber.add(doc["vehiclenumber"]);
      vehicleservicedate.add(doc["servicedate"]);
      vehcilerectified.add(doc["rectified"]);
      vehiclescore.add("${doc["score"]}%");
    }

    setState(() {
      vehiclelist = true;
    });
  }
}
