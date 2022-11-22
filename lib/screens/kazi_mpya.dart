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
        title: const Text(
          'Kazi Mpya',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Color.fromARGB(255, 142, 153, 148),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('images/drop.jpg'))),
      ),
    );
  }
}
