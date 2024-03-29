// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:dashboard/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Introduction Screen',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TestScreen(),
    );
  }
}

class TestScreen extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'Uendeshaji',
      subTitle: 'Fuatilia ujazaji wa vinywaji mbalimbali',
      imageUrl: 'images/pic/takwimu.png',
      titleTextStyle: GoogleFonts.spaceMono(fontSize: 30),
      subTitleTextStyle: GoogleFonts.spaceMono(fontSize: 18),
    ),
    Introduction(
      title: 'Taarifa',
      subTitle: 'Tengeneza Ripoti za kazi',
      imageUrl: 'images/pic/report.png',
      titleTextStyle: GoogleFonts.spaceMono(fontSize: 30),
      subTitleTextStyle: GoogleFonts.spaceMono(fontSize: 18),
    ),
    Introduction(
      title: 'Pendekeza',
      subTitle: 'Shauri maboresho ya huduma',
      imageUrl: 'images/pic/19.png',
      titleTextStyle: GoogleFonts.spaceMono(fontSize: 30),
      subTitleTextStyle: GoogleFonts.spaceMono(fontSize: 18),
    ),
    Introduction(
      title: 'Data',
      subTitle: 'Tuma data kwa urahisi',
      imageUrl: 'images/pic/1.png',
      titleTextStyle: GoogleFonts.spaceMono(fontSize: 30),
      subTitleTextStyle: GoogleFonts.spaceMono(fontSize: 18),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      onTapSkipButton: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MainScreen(),
          ), //MaterialPageRoute
        );
      },
      // foregroundColor: Colors.red,
    );
  }
}
