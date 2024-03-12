// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'components/side_menu.dart';

class KaziZilizopita extends StatelessWidget {
  const KaziZilizopita({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        title: const Text('Kazi Zilizopita'),
        backgroundColor: Color.fromARGB(255, 211, 201, 201),
      ),
      body: Column(
        children: [
          // Container(
          //   height: 200,
          //   width: double.infinity,
          //   child: Card(
          //     margin: EdgeInsets.all(32),
          //     color: Color.fromARGB(255, 201, 231, 218),
          //     elevation: 20,
          //     shadowColor: Color.fromARGB(255, 120, 109, 300),
          //     shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(10)),
          //     child: Column(
          //       children: const [
          //         Padding(
          //             padding: EdgeInsets.all(16.0),
          //             child: Image(
          //               image: AssetImage(
          //                 './images/juice.png',
          //               ),
          //               alignment: Alignment.centerRight,
          //             )),
          //       ],
          //     ),
          //   ),
          // ),
          Container(
            height: 200,
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
            height: 200,
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

          // Container(
          //   height: 200,
          //   width: double.infinity,
          //   child: Card(
          //     margin: EdgeInsets.all(32),
          //     color: Color.fromARGB(255, 201, 231, 218),
          //     elevation: 20,
          //     shadowColor: Color.fromARGB(255, 120, 109, 300),
          //     shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(10)),
          //     child: Padding(
          //         padding: const EdgeInsets.all(16.0),
          //         child: Image(
          //           image: AssetImage(
          //             './images/wine.png',
          //           ),
          //           alignment: Alignment.centerRight,
          //         )),
          //   ),
          // ),
        ],
      ),
    );
  }
}
