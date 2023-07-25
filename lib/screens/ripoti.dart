// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import

import 'package:dashboard/screens/kazi_mpya.dart';
import 'package:expandable_menu/expandable_menu.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import 'components/side_menu.dart';

class Ripoti extends StatelessWidget {
  const Ripoti({super.key});

  Widget buildQuoteCard() => Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            Text(
              'Karibu katika ukurasa wa kuangalia na kutengeneza ripoti ya kazi zilizofanyika.',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              '@Ujazo',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: "popins"),
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
              child: SizedBox(
            height: 200.0,
            width: 300.0,
            child: Stack(
              children: [
                Positioned(
                  top: 20.0,
                  right: 20.0,
                  left: 20.0,
                  bottom: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: kDarkBlue,
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
              child: SizedBox(
            height: 200.0,
            width: 300.0,
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
              child: SizedBox(
            height: 200.0,
            width: 300.0,
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
              child: SizedBox(
            height: 200.0,
            width: 300.0,
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
          // buildColorCard(context)
        ],
      ),
    );
  }
}
