import 'package:dashboard/data/data.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class KinywajiGrid extends StatelessWidget {
  const KinywajiGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: kinywaji.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 16 / 7, crossAxisCount: 1, mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(kinywaji[index].backImage),
                  fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        kinywaji[index].name,
                        style: GoogleFonts.spaceMono(
                            color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        kinywaji[index].amount,
                        style: GoogleFonts.spaceMono(color: Colors.white),
                      ),
                      CircularPercentIndicator(
                        radius: 30,
                        lineWidth: 8,
                        animation: true,
                        animationDuration: 1500,
                        circularStrokeCap: CircularStrokeCap.round,
                        percent: kinywaji[index].percent / 100,
                        progressColor: Colors.white,
                        center: Text(
                          "${kinywaji[index].percent}%",
                          style: GoogleFonts.spaceMono(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        kinywaji[index].imageUrl,
                        height: 110,
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
