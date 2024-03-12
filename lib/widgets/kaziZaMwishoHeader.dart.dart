// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class KaziZaMwishoHeader extends StatelessWidget {
  const KaziZaMwishoHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              "Kazi za Mwisho ",
              style: GoogleFonts.spaceMono(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.card_giftcard,
              color: Colors.grey,
              size: 18,
            )
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.calendar_month_outlined,
              color: Colors.grey,
              size: 15,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "18 Julai 2023",
              style: GoogleFonts.spaceMono(
                  fontSize: 13,
                  color: kDarkBlue,
                  height: 2,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}
