// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class ActivityHeaderWiki extends StatelessWidget {
  const ActivityHeaderWiki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Grafu ya Wiki",
          style:
              GoogleFonts.spaceMono(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(
              "Siku",
              style: GoogleFonts.spaceMono(color: Colors.grey),
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              "Wiki",
              style: GoogleFonts.spaceMono(color: kDarkBlue),
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              "Mwezi",
              style: GoogleFonts.spaceMono(color: Colors.grey),
            )
          ],
        )
      ],
    );
  }
}
