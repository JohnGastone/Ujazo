// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import

import 'package:dashboard/screens/kazi_mpya.dart';
import 'package:dashboard/screens/main_screen.dart';
import 'package:expandable_menu/expandable_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant.dart';
import 'components/side_menu.dart';

class Ripoti extends StatelessWidget {
  const Ripoti({super.key});

  Widget buildQuoteCard() => Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            Text(
              'Karibu katika ukurasa wa kuangalia na kutengeneza ripoti za kazi zilizofanyika.',
              style: GoogleFonts.lato(fontSize: 21),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              '@Ujazo',
              style: GoogleFonts.lato(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
        ),
      );

  // Widget buildRoundeCard() => Card(
  //       color: Colors.white38,
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
  //       shadowColor: Colors.black87,
  //       elevation: 10,
  //       child: Padding(
  //         padding: const EdgeInsets.all(12.0),
  //         child: Column(children: [
  //           Text(
  //             'Ripoti Ya Wiki.',
  //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //           ),
  //           SizedBox(
  //             height: 12,
  //           ),
  //           Text(
  //             'Vinywaji Vilivyojazwa.',
  //             style: TextStyle(fontSize: 35, fontWeight: FontWeight.normal),
  //           )
  //         ]),
  //       ),
  //     );

  // Widget buildColorCard(context) => Card(
  //       color: Colors.white38,
  //       clipBehavior: Clip.antiAlias,
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
  //       shadowColor: Color.fromARGB(221, 139, 124, 124),
  //       elevation: 15,
  //       child: Container(
  //         decoration: BoxDecoration(
  //             gradient: LinearGradient(
  //           colors: [
  //             Color.fromARGB(255, 238, 227, 237),
  //             Color.fromARGB(255, 173, 118, 114)
  //           ],
  //           begin: Alignment.topCenter,
  //           end: Alignment.bottomCenter,
  //         )),
  //         padding: const EdgeInsets.all(12.0),
  //         child: Column(children: [
  //           Text(
  //             'Ripoti ya siku.',
  //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //           ),
  //           SizedBox(
  //             height: 12,
  //           ),
  //           Text(
  //             'Vinywaji Vilivyojazwa.',
  //             style: TextStyle(fontSize: 35, fontWeight: FontWeight.normal),
  //           ),
  //           Ink.image(
  //             image: AssetImage('./images/waterdrop.png'),
  //             child: InkWell(
  //               onTap: () {
  //                 Navigator.pop(context);
  //                 Navigator.of(context).push(MaterialPageRoute(
  //                     builder: (context) => const KaziMpya()));
  //               },
  //             ),
  //             height: 50,
  //             fit: BoxFit.cover,
  //           ),
  //         ]),
  //       ),
  //     );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        title: const Text(
          'Ripoti',
          style: TextStyle(color: Colors.black38),
        ),
        backgroundColor: Color.fromARGB(255, 211, 201, 201),
      ),
      body: ListView(
        children: [
          buildQuoteCard(),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Juice | Sharubati",
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                      ..pop()
                      ..push(
                        MaterialPageRoute<MainScreen>(
                          builder: (context) => const MainScreen(),
                        ),
                      );
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: const Center(child: Text('Entry A')),
                  ),
                ),
                const Divider(),
                Container(
                  height: 50,
                  color: Colors.amber[200],
                  child: const Center(child: Text('Entry B')),
                ),
                const Divider(),
                Container(
                  height: 50,
                  color: Colors.amber[300],
                  child: const Center(child: Text('Entry C')),
                ),
                const Divider(),
                Container(
                  height: 50,
                  color: Colors.amber[400],
                  child: const Center(child: Text('Entry D')),
                ),
                const Divider(),
                Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: const Center(child: Text('Entry E')),
                ),
                const Divider(),
                Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Entry F')),
                ),
              ],
            ),
          ),

          // Center(
          //     child: SizedBox(
          //   height: 200.0,
          //   width: 350.0,
          //   child: Stack(
          //     children: [
          //       Positioned(
          //         top: 20.0,
          //         right: 20.0,
          //         left: 20.0,
          //         bottom: 0.0,
          //         child: Container(
          //           decoration: const BoxDecoration(
          //             color: kDarkBlue,
          //             borderRadius: BorderRadius.all(
          //               Radius.circular(16.0),
          //             ),
          //           ),
          //         ),
          //       ),
          //       Positioned(
          //           top: 0.0,
          //           left: 0.0,
          //           right: 0.0,
          //           child: ExpandableMenu(
          //             width: 40.0,
          //             height: 40.0,
          //             items: [
          //               Icon(
          //                 Icons.picture_as_pdf,
          //                 color: Color.fromARGB(255, 77, 72, 72),
          //               ),
          //               Icon(
          //                 Icons.image_outlined,
          //                 color: Color.fromARGB(255, 77, 72, 72),
          //               ),
          //               Text(
          //                 'data',
          //                 style: GoogleFonts.lato(fontSize: 5),
          //               )
          //             ],
          //           )),
          //     ],
          //   ),
          // )),
          SizedBox(
            height: 40,
          ),

          Center(
            child: Text(
              "Water | Maji",
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
              child: SizedBox(
            height: 200.0,
            width: 350.0,
            child: Stack(
              children: [
                Positioned(
                  top: 20.0,
                  right: 20.0,
                  left: 20.0,
                  bottom: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: kOrange,
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                    top: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: ExpandableMenu(
                      width: 40.0,
                      height: 40.0,
                      items: [
                        Icon(
                          Icons.picture_as_pdf,
                          color: Color.fromARGB(255, 77, 72, 72),
                        ),
                        Icon(
                          Icons.image_outlined,
                          color: Color.fromARGB(255, 77, 72, 72),
                        ),
                      ],
                    )),
              ],
            ),
          )),
          SizedBox(
            height: 40,
          ),

          Center(
            child: Text(
              "Alcohol | Pombe",
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
              child: SizedBox(
            height: 200.0,
            width: 350.0,
            child: Stack(
              children: [
                Positioned(
                  top: 20.0,
                  right: 20.0,
                  left: 20.0,
                  bottom: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: kGreen,
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                    top: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: ExpandableMenu(
                      width: 40.0,
                      height: 40.0,
                      items: [
                        Icon(
                          Icons.picture_as_pdf,
                          color: Color.fromARGB(255, 77, 72, 72),
                        ),
                        Icon(
                          Icons.image_outlined,
                          color: Color.fromARGB(255, 77, 72, 72),
                        ),
                      ],
                    )),
              ],
            ),
          )),
          // buildRoundeCard(),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              "Wine | Mvinyo",
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
              child: SizedBox(
            height: 200.0,
            width: 350.0,
            child: Stack(
              children: [
                Positioned(
                  top: 20.0,
                  right: 20.0,
                  left: 20.0,
                  bottom: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: kYellow,
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                    top: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: ExpandableMenu(
                      width: 40.0,
                      height: 40.0,
                      items: [
                        Icon(
                          Icons.picture_as_pdf,
                          color: Color.fromARGB(255, 77, 72, 72),
                        ),
                        Icon(
                          Icons.image_outlined,
                          color: Color.fromARGB(255, 77, 72, 72),
                        ),
                      ],
                    )),
              ],
            ),
          )),

          SizedBox(
            height: 50,
          )
          // buildColorCard(context)
        ],
      ),
    );
  }
}
