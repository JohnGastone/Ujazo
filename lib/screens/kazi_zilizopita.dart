// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:dashboard/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ternav_icons/ternav_icons.dart';

import 'components/side_menu.dart';

class KaziZilizopita extends StatelessWidget {
  const KaziZilizopita({super.key});
  Widget buildQuoteCard() => Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            Text(
              'Karibu katika ukurasa wa kuangalia na kufuatilia kazi zilizofanyika.',
              style: GoogleFonts.spaceMono(fontSize: 18),
            ),
            Image.asset(
              'images/ujazo.png',
              height: 70,
              width: 70,
            ),
          ]),
        ),
      );

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
            'Kazi Zilizopita',
            style: GoogleFonts.spaceMono(),
          ),
          backgroundColor: Color.fromARGB(255, 211, 201, 201),
        ),
        body: ListView(
          children: [
            buildQuoteCard(),
            Container(
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
                            './images/juice.png',
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
                            Text(
                              "Zilizokamilika:",
                              style: GoogleFonts.spaceMono(fontSize: 13),
                            ),
                            Row(
                              children: [
                                Text(
                                  '-',
                                  style: GoogleFonts.spaceMono(),
                                )
                              ],
                            )
                          ],
                        )
                      ]),
                ),
              ),
            ),
            Container(
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
                    padding: const EdgeInsets.all(16.0),
                    child: Image(
                      image: AssetImage(
                        './images/soda.png',
                      ),
                      alignment: Alignment.centerLeft,
                    )),
              ),
            ),
            Container(
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
                    padding: const EdgeInsets.all(16.0),
                    child: Image(
                      image: AssetImage(
                        './images/water.png',
                      ),
                      alignment: Alignment.centerLeft,
                    )),
              ),
            ),
            Container(
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
                    padding: const EdgeInsets.all(16.0),
                    child: Image(
                      image: AssetImage(
                        './images/wine.png',
                      ),
                      alignment: Alignment.centerLeft,
                    )),
              ),
            ),
          ],
        ));
  }
}
