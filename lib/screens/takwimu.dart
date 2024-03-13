// ignore_for_file: prefer_const_constructors

import 'package:dashboard/screens/components/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Takwimu extends StatelessWidget {
  const Takwimu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        title: Text(
          'Takwimu',
          style:
              GoogleFonts.spaceMono(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Color.fromARGB(255, 211, 201, 201),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('images/pic/10.png'))),
      ),
    );
  }
}
