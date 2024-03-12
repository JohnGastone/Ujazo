// ignore_for_file: unused_local_variable, file_names

import 'package:dashboard/data/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KaziZaMwishoGrid extends StatelessWidget {
  const KaziZaMwishoGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GridView.builder(
        itemCount: kaziZaMwisho.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 16 / 4, crossAxisCount: 1, mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Container(
            // color: Colors.grey,
            decoration: BoxDecoration(
                color: const Color(0xffF7F7F7),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: kaziZaMwisho[index].color,
                            borderRadius: BorderRadius.circular(10)),
                        height: 55,
                        width: 55,
                        child: kaziZaMwisho[index].icon,
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        kaziZaMwisho[index].heading,
                        maxLines: 1,
                        style: GoogleFonts.spaceMono(
                          fontSize: MediaQuery.of(context).size.width * 0.050,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        kaziZaMwisho[index].subHeading,
                        style: GoogleFonts.spaceMono(
                          color: Colors.grey,
                          fontSize: MediaQuery.of(context).size.width * 0.035,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.more_vert,
                        color: Color.fromARGB(255, 224, 166, 166),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
