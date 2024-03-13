// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/side_menu.dart';

class KuhusuMashine extends StatelessWidget {
  const KuhusuMashine({super.key});

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
          'Kuhusu Mashine',
          style: GoogleFonts.spaceMono(),
        ),
        backgroundColor: Color.fromARGB(255, 211, 201, 201),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('images/mashine.png'))),
      ),
    );
  }
}
