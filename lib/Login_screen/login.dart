import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_checkup/Dashboard/Dashboard.dart'; 
import 'package:vehicle_checkup/Login_screen/widgets/maintext.dart';
import 'package:vehicle_checkup/firebase_options.dart'; 
import 'package:cloud_firestore/cloud_firestore.dart';

void main(List<String> args) {
  runApp(login_Temp());
}

class login_Temp extends StatefulWidget {
  const login_Temp({super.key});

  @override
  State<login_Temp> createState() => _login_TempState();
}

class _login_TempState extends State<login_Temp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const Login());
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  List<String> usernames = [];
  List<String> passowrds = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUsernamesandpasswords();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromRGBO(254, 206, 87, 100),
          child: ListView(
            shrinkWrap: false,
            scrollDirection: Axis.vertical,
            children: <Widget> [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 70,
                      child: Image.asset(
                        "lib/Login_screen/widgets/Logo.png",
                      ),
                    ),
                    Maintext(textdata: "HAYA"),
                    Maintext(textdata: "AGENCIES"),
                    Maintext(textdata: "VEHICLE CHECKUP"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: getsize(),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 25),
                    Text(
                      "LOGIN",
                      style: TextStyle(
                        fontWeight: FontWeight(800),
                        fontSize: 46,
                        color: Colors.black,
                        fontFamily: 'Shrikhand',
                      ),
                    ),
          
                    // Username
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 25, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Username",
                              style: TextStyle(
                                fontFamily: "Comic Sans",
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  0,
                                  0,
                                  10,
                                  10,
                                ),
                                child: TextField(
                                  controller: username,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
          
                    // Password
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 25, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Password",
                              style: TextStyle(
                                fontFamily: "Comic Sans",
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  0,
                                  0,
                                  10,
                                  10,
                                ),
                                child: TextField(
                                  controller: password,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
          
                    Padding(
                      padding: EdgeInsetsGeometry.all(10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            const Color.fromARGB(255, 254, 207, 87),
                          ),
                          shape:
                              WidgetStatePropertyAll<
                                RoundedRectangleBorder?
                              >(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.8),
                                  ),
                                  side: BorderSide(color: Colors.black),
                                ),
                              ),
                        ),
                        onPressed: () {
                          ValidateCredentials();
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
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

  double? getsize() {
    double heightd = MediaQuery.sizeOf(context).height;

    heightd = heightd - 270;

    return heightd;
  }

  void ValidateCredentials() {
    for (var i = 0; i < usernames.length; i++) {
      String currentusernames = usernames[i];
      String currentpasswords = passowrds[i];

      if (username.text.toUpperCase() == currentusernames) {
        if (password.text.toUpperCase() == currentpasswords) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Dashboard(user: currentusernames,)),
          );
        }
      }
    }
  }

  double? GetFullHeight() {
    double heightd = MediaQuery.sizeOf(context).height;
    return heightd;

  }

  void getUsernamesandpasswords() async 
  {
    String Collection_id = "User";

    await WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
 
    QuerySnapshot<Map<String,dynamic>> snapshot = await FirebaseFirestore.instance.collection(Collection_id) .get();

    for (var doc in snapshot.docs) {
      usernames.add(doc["username"].toString().toUpperCase());
      passowrds.add(doc["password"].toString().toUpperCase());
    }
 
  }
}
