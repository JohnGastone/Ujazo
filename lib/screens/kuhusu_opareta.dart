// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'components/side_menu.dart';

class KuhusuOpareta extends StatelessWidget {
  const KuhusuOpareta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        title: const Text('Kuhusu Opareta'),
        backgroundColor: Color.fromARGB(255, 211, 201, 201),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('images/opareta.png'))),
      ),
    );
  }
}
