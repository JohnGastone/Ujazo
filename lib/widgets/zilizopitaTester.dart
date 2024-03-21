// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:dashboard/constant.dart';
import 'package:dashboard/data/data.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ternav_icons/ternav_icons.dart';

class Zilizopita extends StatelessWidget {
  const Zilizopita({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: zilizopita.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 16 / 7, crossAxisCount: 1, mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Container(
            height: 300,
            width: double.infinity,
            child: Card(
              margin: EdgeInsets.all(32),
              color: Color.fromARGB(255, 201, 231, 218),
              elevation: 20,
              shadowColor: Color.fromARGB(255, 120, 109, 300),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(right: 10, top: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage(
                          zilizopita[index].image,
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Chagua tarehe',
                                style: GoogleFonts.spaceMono(
                                    fontSize: 15, color: kDarkBlue),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(TernavIcons.lightOutline.calender_3)
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "*",
                                style: GoogleFonts.spaceMono(fontSize: 23),
                              ),
                              Text(
                                "Zilizokamilika:",
                                style: GoogleFonts.spaceMono(fontSize: 13),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '-',
                                style: GoogleFonts.spaceMono(fontSize: 13),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '${zilizopita[index].zilizokamilika}',
                                style: GoogleFonts.spaceMono(
                                    fontSize: 13, color: kNew2),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "*",
                                style: GoogleFonts.spaceMono(fontSize: 23),
                              ),
                              Text(
                                "Zinazoendelea:",
                                style: GoogleFonts.spaceMono(fontSize: 13),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '-',
                                style: GoogleFonts.spaceMono(fontSize: 13),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '${zilizopita[index].zinazoendelea}',
                                style: GoogleFonts.spaceMono(
                                    fontSize: 13, color: kNew2),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "*",
                                style: GoogleFonts.spaceMono(fontSize: 23),
                              ),
                              Text(
                                "Lita za Ujazo:",
                                style: GoogleFonts.spaceMono(fontSize: 13),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Text(
                                  '-',
                                  style: GoogleFonts.spaceMono(fontSize: 13),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '${zilizopita[index].ujazo}',
                                  style: GoogleFonts.spaceMono(
                                      fontSize: 13, color: kNew2),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ]),
              ),
            ),
          );
          // return Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage(zilizopita[index].image),
          //         fit: BoxFit.fill),
          //   ),
          //   child: Padding(
          //     padding: const EdgeInsets.all(16),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Image.asset(
          //               kinywaji[index].imageUrl,
          //               height: 110,
          //             )
          //           ],
          //         ),
          //         Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           children: [
          //             Text(
          //               kinywaji[index].name,
          //               style: GoogleFonts.spaceMono(
          //                   color: Colors.white, fontSize: 18),
          //             ),
          //             Text(
          //               kinywaji[index].amount,
          //               style: GoogleFonts.spaceMono(color: Colors.white),
          //             ),
          //             CircularPercentIndicator(
          //               radius: 30,
          //               lineWidth: 8,
          //               animation: true,
          //               animationDuration: 1500,
          //               circularStrokeCap: CircularStrokeCap.round,
          //               percent: kinywaji[index].percent / 100,
          //               progressColor: Colors.white,
          //               center: Text(
          //                 "${kinywaji[index].percent}%",
          //                 style: GoogleFonts.spaceMono(color: Colors.white),
          //               ),
          //             )
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // );
        });
  }
}
