// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';
import '../screens/takwimu.dart';

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
            SizedBox(
              width: 50,
            ),
            Text(
              "Soma zaidi",
              style: GoogleFonts.spaceMono(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Color.fromARGB(255, 124, 112, 112)),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Takwimu()));
              },
              child: Image.asset(
                'images/pic/Smart.png',
                width: 30,
                height: 30,
              ),
            )
          ],
        ),
      ],
    );
  }
}
