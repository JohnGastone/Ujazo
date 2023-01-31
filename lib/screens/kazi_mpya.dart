// ignore_for_file: prefer_const_constructors

import 'package:dashboard/screens/components/side_menu.dart';
import 'package:flutter/material.dart';

class KaziMpya extends StatelessWidget {
  const KaziMpya({super.key});

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
          'Kazi Mpya',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Color.fromARGB(255, 211, 201, 201),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('images/drop.jpg'))),
      ),
    );
  }
}
