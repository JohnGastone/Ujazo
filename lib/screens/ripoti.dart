// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import, import_of_legacy_library_into_null_safe, use_build_context_synchronously

import 'package:dashboard/screens/kazi_mpya.dart';
import 'package:expandable_menu/expandable_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant.dart';
import '../widgets/pdfScreen.dart';
import 'components/side_menu.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';

class Ripoti extends StatelessWidget {
  const Ripoti({super.key});

  Future<String> generateAndSavePdf() async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Center(
          child: pw.Text('This is your PDF report!'),
        ),
      ),
    );

    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/report.pdf');
    await file.writeAsBytes(await pdf.save());
    return file.path;
  }

  Widget buildQuoteCard() => Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            Text(
              'Karibu katika ukurasa wa kuangalia na kutengeneza ripoti za kazi zilizofanyika.',
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
          'Ripoti',
          style: GoogleFonts.spaceMono(color: Colors.black38),
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
              style: GoogleFonts.spaceMono(
                  fontWeight: FontWeight.bold, fontSize: 20),
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
                      color: kDarkBlue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          './images/juice.png',
                          height: 140,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: ExpandableMenu(
                      width: 40.0,
                      height: 40.0,
                      items: [
                        InkWell(
                          onTap: () async {
                            final path = await generateAndSavePdf();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PDFScreen(path: path),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.picture_as_pdf,
                            color: Color.fromARGB(255, 77, 72, 72),
                          ),
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
              "Water | Maji",
              textAlign: TextAlign.center,
              style: GoogleFonts.spaceMono(
                  fontWeight: FontWeight.bold, fontSize: 20),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          './images/water.png',
                          height: 140,
                        ),
                      ],
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
              style: GoogleFonts.spaceMono(
                  fontWeight: FontWeight.bold, fontSize: 20),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          './images/juice.png',
                          height: 140,
                        ),
                      ],
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
              style: GoogleFonts.spaceMono(
                  fontWeight: FontWeight.bold, fontSize: 20),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          './images/wine.png',
                          height: 140,
                        ),
                      ],
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
