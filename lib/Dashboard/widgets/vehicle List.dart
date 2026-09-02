import 'package:flutter/material.dart';
import 'package:vehicle_checkup/view_checkup/viewcheckup.dart';

class KL32U6490 extends StatelessWidget {
  final String date;
  final String rectified;
  final String score;

  const KL32U6490({
    super.key,
    required this.date,
    required this.rectified,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        viewCheckupfunction("KL 32 U 6490", date, context);

      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        width: 180,
        height: 100,
        child: Stack(
          alignment: AlignmentGeometry.centerEnd,
          children: [
            Image.asset("lib/Dashboard/widgets/Images/ace.png"),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 87, 87, 0.75),
                borderRadius: BorderRadius.all(Radius.circular(7.5)),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "KL 32 U 6490",
                        style: TextStyle(
                          fontFamily: "Anton",
                          fontSize: 15,
                          fontWeight: FontWeight(800),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DATE: $date",
                          style: TextStyle(fontWeight: FontWeight(800)),
                        ),
                        // Text("SCORE: $score", style: TextStyle(fontWeight: FontWeight(800)),),
                        Text(
                          "RECTIFIED: $rectified",
                          style: TextStyle(fontWeight: FontWeight(800)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Container(color: Color.fromRGBO(255, 87, 87, 0.76)),
          ],
        ),
      ),
    );
  }
}

class KL32T4054 extends StatelessWidget {
  final String date;
  final String rectified;
  final String score;

  const KL32T4054({
    super.key,
    required this.date,
    required this.rectified,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        viewCheckupfunction("KL 32 T 4054", date, context);

      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        width: 180,
        height: 100,
        child: Stack(
          alignment: AlignmentGeometry.centerEnd,
          children: [
            Image.asset("lib/Dashboard/widgets/Images/ace.png"),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(92, 255, 230, 0.75),
                borderRadius: BorderRadius.all(Radius.circular(7.5)),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "KL 32 T 4054",
                        style: TextStyle(
                          fontFamily: "Anton",
                          fontSize: 15,
                          fontWeight: FontWeight(800),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DATE: $date",
                          style: TextStyle(fontWeight: FontWeight(800)),
                        ),
                        // Text("SCORE: $score", style: TextStyle(fontWeight: FontWeight(800)),),
                        Text(
                          "RECTIFIED: $rectified",
                          style: TextStyle(fontWeight: FontWeight(800)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Container(color: Color.fromRGBO(255, 87, 87, 0.76)),
          ],
        ),
      ),
    );
  }
}

class KL32U4054 extends StatelessWidget {
  final String date;
  final String rectified;
  final String score;

  const KL32U4054({
    super.key,
    required this.date,
    required this.rectified,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        viewCheckupfunction("KL 32 U 4054", date, context);

      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        width: 180,
        height: 100,
        child: Stack(
          alignment: AlignmentGeometry.centerEnd,
          children: [
            Image.asset("lib/Dashboard/widgets/Images/ace.png"),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(119, 0, 170, 0.749),
                borderRadius: BorderRadius.all(Radius.circular(7.5)),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "KL 32 U 4054",
                        style: TextStyle(
                          fontFamily: "Anton",
                          fontSize: 15,
                          fontWeight: FontWeight(800),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DATE: $date",
                          style: TextStyle(fontWeight: FontWeight(800)),
                        ),
                        // Text("SCORE: $score", style: TextStyle(fontWeight: FontWeight(800)),),
                        Text(
                          "RECTIFIED: $rectified",
                          style: TextStyle(fontWeight: FontWeight(800)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Container(color: Color.fromRGBO(255, 87, 87, 0.76)),
          ],
        ),
      ),
    );
  }
}

class KL32N4471 extends StatelessWidget {
  final String date;
  final String rectified;
  final String score;

  const KL32N4471({
    super.key,
    required this.date,
    required this.rectified,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        viewCheckupfunction("KL 32 N 4471", date, context);

      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        width: 180,
        height: 100,
        child: Stack(
          alignment: AlignmentGeometry.centerEnd,
          children: [
            Image.asset("lib/Dashboard/widgets/Images/carry.png"),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(226, 169, 241, 0.75),
                borderRadius: BorderRadius.all(Radius.circular(7.5)),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "KL 32 N 4471",
                        style: TextStyle(
                          fontFamily: "Anton",
                          fontSize: 15,
                          fontWeight: FontWeight(800),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DATE: $date",
                          style: TextStyle(fontWeight: FontWeight(800)),
                        ),
                        // Text("SCORE: $score", style: TextStyle(fontWeight: FontWeight(800)),),
                        Text(
                          "RECTIFIED: $rectified",
                          style: TextStyle(fontWeight: FontWeight(800)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Container(color: Color.fromRGBO(255, 87, 87, 0.76)),
          ],
        ),
      ),
    );
  }
}

class KL32W6490 extends StatelessWidget {
  final String date;
  final String rectified;
  final String score;

  const KL32W6490({
    super.key,
    required this.date,
    required this.rectified,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        viewCheckupfunction("KL 32 W 6490", date, context);

      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        width: 180,
        height: 100,
        child: Stack(
          alignment: AlignmentGeometry.centerEnd,
          children: [
            Image.asset("lib/Dashboard/widgets/Images/bolero.png"),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 74, 173, 0.75),
                borderRadius: BorderRadius.all(Radius.circular(7.5)),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "KL 32 W 6490",
                        style: TextStyle(
                          fontFamily: "Anton",
                          fontSize: 15,
                          fontWeight: FontWeight(800),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DATE: $date",
                          style: TextStyle(fontWeight: FontWeight(800)),
                        ),
                        // Text("SCORE: $score", style: TextStyle(fontWeight: FontWeight(800)),),
                        Text(
                          "RECTIFIED: $rectified",
                          style: TextStyle(fontWeight: FontWeight(800)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Container(color: Color.fromRGBO(255, 87, 87, 0.76)),
          ],
        ),
      ),
    );
  }
}

class KL32S9973 extends StatelessWidget {
  final String date;
  final String rectified;
  final String score;

  const KL32S9973({
    super.key,
    required this.date,
    required this.rectified,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        viewCheckupfunction("KL 32 S 9973", date, context);

      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        width: 180,
        height: 100,
        child: Stack(
          alignment: AlignmentGeometry.centerEnd,
          children: [
            Image.asset("lib/Dashboard/widgets/Images/petrol ace.png"),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(173, 161, 0, 0.749),
                borderRadius: BorderRadius.all(Radius.circular(7.5)),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "KL 32 S 9973",
                        style: TextStyle(
                          fontFamily: "Anton",
                          fontSize: 15,
                          fontWeight: FontWeight(800),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DATE: $date",
                          style: TextStyle(fontWeight: FontWeight(800)),
                        ),
                        // Text("SCORE: $score", style: TextStyle(fontWeight: FontWeight(800)),),
                        Text(
                          "RECTIFIED: $rectified",
                          style: TextStyle(fontWeight: FontWeight(800)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Container(color: Color.fromRGBO(255, 87, 87, 0.76)),
          ],
        ),
      ),
    );
  }
}

class KL43F7150 extends StatelessWidget {
  final String date;
  final String rectified;
  final String score;

  const KL43F7150({
    super.key,
    required this.date,
    required this.rectified,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        viewCheckupfunction("KL 43 F 7150", date, context);

      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        width: 180,
        height: 100,
        child: Stack(
          alignment: AlignmentGeometry.centerEnd,
          children: [
            Image.asset("lib/Dashboard/widgets/Images/zip.png"),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(75, 78, 63, 0.745),
                borderRadius: BorderRadius.all(Radius.circular(7.5)),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "KL 43 F 7150",
                        style: TextStyle(
                          fontFamily: "Anton",
                          fontSize: 15,
                          fontWeight: FontWeight(800),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DATE: $date",
                          style: TextStyle(fontWeight: FontWeight(800)),
                        ),
                        // Text("SCORE: $score", style: TextStyle(fontWeight: FontWeight(800)),),
                        Text(
                          "RECTIFIED: $rectified",
                          style: TextStyle(fontWeight: FontWeight(800)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Container(color: Color.fromRGBO(255, 87, 87, 0.76)),
          ],
        ),
      ),
    );
  }
}

class KL32Q9658 extends StatelessWidget {
  final String date;
  final String rectified;
  final String score;

  const KL32Q9658({
    super.key,
    required this.date,
    required this.rectified,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        viewCheckupfunction("KL 32 Q 9658", date, context);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        width: 180,
        height: 100,
        child: Stack(
          alignment: AlignmentGeometry.centerEnd,
          children: [
            Image.asset("lib/Dashboard/widgets/Images/auto.png"),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(94, 255, 1, 0.741),
                borderRadius: BorderRadius.all(Radius.circular(7.5)),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "KL 32 Q 9658",
                        style: TextStyle(
                          fontFamily: "Anton",
                          fontSize: 15,
                          fontWeight: FontWeight(800),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DATE: $date",
                          style: TextStyle(fontWeight: FontWeight(800)),
                        ),
                        // Text("SCORE: $score", style: TextStyle(fontWeight: FontWeight(800)),),
                        Text(
                          "RECTIFIED: $rectified",
                          style: TextStyle(fontWeight: FontWeight(800)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Container(color: Color.fromRGBO(255, 87, 87, 0.76)),
          ],
        ),
      ),
    );
  }
}

void viewCheckupfunction(
  String vehiclenumber,
  String date,
  BuildContext context,
) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) {
        return Viewcheckup(documentid: date, vehicleNumber: vehiclenumber);
      },
    ),
  );
}
