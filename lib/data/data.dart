import 'package:dashboard/constant.dart';
import 'package:flutter/material.dart';
import '../model/kinywaji_model.dart';
import '../model/planing_model.dart';
import '../model/statistics_model.dart';

final List<Kinywaji> kinywaji = [
  Kinywaji(
      text: "Juice",
      lessons: "Lita 380",
      imageUrl: "images/juice.png",
      percent: 75,
      backImage: "images/box/box1.png",
      color: kDarkBlue),
  Kinywaji(
      text: "Maji",
      lessons: "Lita 730",
      imageUrl: "images/water.png",
      percent: 50,
      backImage: "images/box/box2.png",
      color: kOrange),
  Kinywaji(
      text: "Soda",
      lessons: "Lita 350",
      imageUrl: "images/soda.png",
      percent: 59,
      backImage: "images/box/box3.png",
      color: kGreen),
  Kinywaji(
      text: "Mvinyo",
      lessons: "Lita 75",
      imageUrl: "images/wine.png",
      percent: 75,
      backImage: "images/box/box4.png",
      color: kYellow),
];

final List<KaziZaMwisho> kaziZaMwisho = [
  KaziZaMwisho(
    heading: "Soda 350 ml",
    subHeading: "8:00 AM - 10:00 AM",
    color: kLightBlue,
    icon: const Icon(
      Icons.bookmark,
      color: kDarkBlue,
    ),
  ),
  KaziZaMwisho(
    heading: "Mvinyo 600 ml",
    subHeading: "03:00 PM - 04:00 PM",
    color: const Color(0xffE2EDD2),
    icon: const Icon(
      Icons.bookmark,
      color: kGreen,
    ),
  ),
  KaziZaMwisho(
    heading: "Maji 500 ml",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffF9F0D3),
    icon: const Icon(Icons.bookmark, color: kYellow),
  ),
  KaziZaMwisho(
    heading: "Juice 500 ml",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color.fromARGB(255, 150, 150, 140),
    icon: const Icon(Icons.bookmark, color: kDark),
  ),
];

final List<Statistics> statistics = [
  Statistics(
    title: "Kazi\nzilizokamilika",
    number: "42",
  ),
  Statistics(
    title: "Muda\nuliotumika.",
    number: "Saa 36",
  ),
  Statistics(
    title: "Kazi\nzinazoendelea",
    number: "103",
  ),
  Statistics(
    title: "Maoni ",
    number: "Nzuri",
  )
];
