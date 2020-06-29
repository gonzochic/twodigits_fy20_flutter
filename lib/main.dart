import 'package:flutter/material.dart';

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
    return Container();
  }
}
