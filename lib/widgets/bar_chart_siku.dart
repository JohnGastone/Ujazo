// ignore_for_file: unnecessary_import

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/chart_data_siku.dart';

class BarChartContentSiku extends StatelessWidget {
  const BarChartContentSiku({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        titlesData: FlTitlesData(
          leftTitles: SideTitles(showTitles: false),
          bottomTitles: SideTitles(
            showTitles: true,
            getTextStyles: (value, _) => GoogleFonts.spaceMono(
              fontSize: 12,
            ),
            getTitles: (value) {
              switch (value.toInt()) {
                case 1:
                  return 'Alfa';
                case 2:
                  return 'Asub';
                case 3:
                  return 'Adhu';
                case 4:
                  return 'Mcha';
                case 5:
                  return 'Alas';
                case 6:
                  return 'Jion';
                case 7:
                  return 'Usik';
                case 8:
                  return 'Wast';
              }
              return '';
            },
          ),
        ),
        borderData: FlBorderData(
            border: Border.all(color: Colors.transparent, width: 0)),
        alignment: BarChartAlignment.spaceEvenly,
        maxY: 16,
        barGroups: barChartGroupData,
      ),
    );
  }
}
