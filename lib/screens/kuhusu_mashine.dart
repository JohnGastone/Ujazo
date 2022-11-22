// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'components/side_menu.dart';

class KuhusuMashine extends StatelessWidget {
  const KuhusuMashine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        title: const Text('Kuhusu Mashine'),
        backgroundColor: Color.fromARGB(255, 142, 153, 148),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('images/drop.jpg'))),
      ),
    );
  }
}
