import 'package:flutter/material.dart';

class KL32U6490DUE extends StatelessWidget {
  final String date;
  const KL32U6490DUE({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        "DUE FOR : $date DAYS",
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
    );
  }
}

class KL32T4054DUE extends StatelessWidget {
  final String date;

  const KL32T4054DUE({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        "DUE FOR : $date DAYS",
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
    );
  }
}

class KL32U4054DUE extends StatelessWidget {
  final String date;

  const KL32U4054DUE({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        "DUE FOR : $date DAYS",
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
    );
  }
}


class KL32N4471DUE extends StatelessWidget {
  final String date;

  const KL32N4471DUE({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        "DUE FOR : $date DAYS",
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
    );
  }
}

class KL32W6490DUE extends StatelessWidget {
  final String date;

  const KL32W6490DUE({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        "DUE FOR : $date DAYS",
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
    );
  }
}

class KL32S9973DUE extends StatelessWidget {
  final String date;

  const KL32S9973DUE({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        "DUE FOR : $date DAYS",
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
    );
  }
}

class KL43F7150DUE extends StatelessWidget {
  final String date;

  const KL43F7150DUE({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        "DUE: $date",
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
    );
  }
}

class KL32Q9658DUE extends StatelessWidget {
  final String date;

  const KL32Q9658DUE({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        "DUE FOR: $date DAYS",
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
    );
  }
}
