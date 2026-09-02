 import 'package:flutter/material.dart';
import 'package:vehicle_checkup/Dashboard/widgets/due_checkup.dart';
import 'package:vehicle_checkup/addcheckup/widgets/values.dart'; 
import 'package:week_of_year/week_of_year.dart'; 

// ignore: must_be_immutable
class DueVehiclelist extends StatefulWidget {
  DueVehiclelist({
    super.key,
    required this.nextserviceweek,
    required this.nextserviceweekday,
    required this.vehiclenumberdue,
  });

  List<String> vehiclenumberdue;
  List<int> nextserviceweekday,nextserviceweek;

  @override
  State<DueVehiclelist> createState() => _DueVehiclelistState();
}

class _DueVehiclelistState extends State<DueVehiclelist> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Due Checkup",
          style: TextStyle(
            fontFamily: "Anton",
            fontSize: fontsize(context),
            fontWeight: FontWeight(800),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: false,
              itemCount:  widget.vehiclenumberdue.length,
              itemBuilder: (context, index) => DueVehcileList(index, context),
            ),
          ),
        ),
      ],
    );
  }

  Widget DueVehcileList(int index, BuildContext context) {
    DateTime currentdaynow = DateTime.now();

    print("${currentdaynow.weekOfYear} week");
    print("DAY ${currentdaynow.weekday}");

    Widget data = Card();

    int nextweekno = widget.nextserviceweek[index];
    int nextday = widget.nextserviceweekday[index];

    print("Current $nextweekno");
    print("Current $nextday");

    int currentday = currentdaynow.weekday;
    int currentweek = currentdaynow.weekOfYear;

    if (nextweekno <= currentweek) {
      int due_difference = currentweek - nextweekno;
      int daydifferencepositive = 0;
      int daydifferencenegative = 0;
      due_difference = due_difference * 7;

      if (nextday < currentday) {
        daydifferencepositive = currentday - nextday;
      } else if (currentday > nextday) {
        daydifferencenegative = nextday - currentday;
      }

      due_difference =
          due_difference + daydifferencepositive - daydifferencenegative;

      String vehiclenumber = widget.vehiclenumberdue[index];

      if (vehiclenumber == "KL 32 T 4054") {
        data = Padding(
          padding: const EdgeInsets.all(8.0),
          child: KL32T4054DUE(date: "$due_difference"),
        );
      }else if (vehiclenumber == "KL 32 U 4054") {
        data = Padding(
          padding: const EdgeInsets.all(8.0),
          child: KL32U4054DUE(date: "$due_difference"),
        );
      } else if (vehiclenumber == "KL 32 U 6490") {
        data = Padding(
          padding: const EdgeInsets.all(8.0),
          child: KL32U6490DUE(date: "$due_difference"),
        );
      } else if (vehiclenumber == "KL 32 N 4471") {
        data = Padding(
          padding: const EdgeInsets.all(8.0),
          child: KL32N4471DUE(date: "$due_difference"),
        );
      } else if (vehiclenumber == "KL 32 W 6490") {
        data = Padding(
          padding: const EdgeInsets.all(8.0),
          child: KL32W6490DUE(date: "$due_difference"),
        );
      } else if (vehiclenumber == "KL 32 S 9973") {
        data = Padding(
          padding: const EdgeInsets.all(8.0),
          child: KL32S9973DUE(date: "$due_difference"),
        );
      } else if (vehiclenumber == "KL 32 Q 9658") {
        data = Padding(
          padding: const EdgeInsets.all(8.0),
          child: KL32Q9658DUE(date: "$due_difference"),
        );
      } else if (vehiclenumber == "KL 43 F 7150") {
        data = Padding(
          padding: const EdgeInsets.all(8.0),
          child: KL43F7150DUE(date: "$due_difference"),
        );
      }
    }

    return data;
  }
}
