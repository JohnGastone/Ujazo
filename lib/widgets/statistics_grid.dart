import 'package:dashboard/constant.dart';
import 'package:dashboard/data/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TakwimuGrid extends StatelessWidget {
  const TakwimuGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: takwimu.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 15,
          childAspectRatio: 1,
          crossAxisCount: 2,
          mainAxisSpacing: 20),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: kLightBlue,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  takwimu[index].title,
                  maxLines: 2,
                  softWrap: true,
                  style: GoogleFonts.spaceMono(
                    fontSize: 14,
                    color: Color(0xff8EA3B7),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 9,
                      decoration: BoxDecoration(
                          color: kDarkBlue,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    Text(
                      takwimu[index].number,
                      style: GoogleFonts.spaceMono(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 80, 156, 226),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
