// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:dashboard/screens/main_screen.dart';
import 'package:flutter/material.dart';
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
        // primarySwatch: Color.fromARGB(23, 23, 32, 43),
        backgroundColor: const Color.fromARGB(255, 36, 34, 34),
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
      subTitle: 'Fuatilia ujazo wa vinywaji mbalimbali',
      imageUrl: 'images/pic/glass-bottle.png',
    ),
    Introduction(
      title: 'Taarifa',
      subTitle: 'Tengeneza Ripoti za kazi',
      imageUrl: 'images/pic/reports.png',
    ),
    Introduction(
      title: 'Pendekeza',
      subTitle: 'Shauri maboresho ya huduma',
      imageUrl: 'images/pic/reward.png',
    ),
    Introduction(
      title: 'Data',
      subTitle: 'Tuma data kwa urahisi',
      imageUrl: 'images/pic/data.png',
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
