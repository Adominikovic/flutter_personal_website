import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'dart:ui';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  bool textAnim = false;
  Widget padding = Padding(
    padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
  );

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      title: 'HomePage',
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            height: screenHeight,
            width: screenWidth,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 10, color: Colors.yellow),
                left: BorderSide(width: 10, color: Colors.yellow),
                right: BorderSide(width: 10, color: Colors.yellow),
              ),
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: letterAnimFromRight(500, 'A', (screenWidth * .17) / 2),
            ),
          ),
        ),
      ),
    );
  }

  Widget letterAnimFromRight(int duration, String letter, double offset) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        setState(() {
          textAnim = !textAnim;
        });
      },
      child: Stack(children: [
        AnimatedContainer(
          alignment: Alignment.topLeft,
          width: screenWidth * .17 / 2,
          padding: textAnim
              ? EdgeInsets.fromLTRB(0, 0, 0, 0)
              : EdgeInsets.fromLTRB(offset, 0, 0, 0),
          duration: Duration(milliseconds: duration),
          curve: Curves.easeOut,
          child: Text(
            letter,
            style: GoogleFonts.anton(
              fontSize: 250,
              color: Colors.white,
            ),
          ),
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              width: (screenWidth * .17) / 2,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              width: (screenWidth * .17) / 2,
              color: Colors.black,
            ),
          ],
        ),
      ]),
    );
  }

  Widget letterAnimFromBottom(int duration, String letter, double offset) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        setState(() {
          textAnim = !textAnim;
        });
      },
      child: Stack(children: [
        AnimatedContainer(
          alignment: Alignment.topLeft,
          width: screenWidth * .17 / 2,
          padding: textAnim
              ? EdgeInsets.fromLTRB(0, 0, 0, 0)
              : EdgeInsets.fromLTRB(offset, 0, 0, 0),
          duration: Duration(milliseconds: duration),
          curve: Curves.easeOut,
          child: Text(
            letter,
            style: GoogleFonts.anton(
              fontSize: 250,
              color: Colors.white,
            ),
          ),
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              width: (screenWidth * .17) / 2,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              width: (screenWidth * .17) / 2,
              color: Colors.black,
            ),
          ],
        ),
      ]),
    );
  }
}
