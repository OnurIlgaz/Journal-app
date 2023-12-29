import 'package:flutter/material.dart';
import 'package:journal/date_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left:3, right: 8.0),
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            border: Border.all(  // This is the border color
              color: Colors.grey.shade600,
              width: 1.0,           // This is the border width
            ),
          ),
          child: ScollableColumn(),
        ),
      )
    );
  }
}

const List <String> months = [
  'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September',
  'October', 'November', 'December'
];

class ScollableColumn extends StatelessWidget {
  ScollableColumn({super.key});

  List <DateData> dates = [
    DateData(),
    DateData(),
    DateData(),
    DateData(),
    DateData(),
    DateData(),
    DateData(),
    DateData(),
    DateData(),
    DateData(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Column(
        children: [
          for(var date in dates)
            InkWell(
              onTap: () {
                print("tapped motherfucker");
              },
              child: Container(
                margin: EdgeInsets.only(top: 6.0),
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.red, Colors.white ],
                    stops: [0.3, 0.3],
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Spacer(flex: 1),
                      Text(
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        months[date.month - 1]
                      ),
                      Spacer(flex: 2),
                      Text(
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        date.day.toString()
                      ),
                      Spacer(flex: 2),
                      Text(
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        date.dayOfWeek
                      ),
                      Spacer(flex: 2),
                    ],
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}