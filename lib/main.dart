import 'package:flutter/material.dart';
import 'package:two_digits/cases.dart';

import 'chart.dart';
import 'header.dart';
import 'tips.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter for Twodigits Day',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CoronaApp(),
    );
  }
}

class CoronaApp extends StatefulWidget {
  @override
  _CoronaAppState createState() => _CoronaAppState();
}

class _CoronaAppState extends State<CoronaApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: Column(
        children: [
          CoronaHeader(),
          Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Text(
              "Safety Tips",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ),
          Tips(),
          Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Text(
              "Confirmed Cases",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConfirmedCases()),
                );
              },
              child: CoronaChart()),
          Container(
            height: 10,
          ),
        ],
      ),
    );
  }
}
