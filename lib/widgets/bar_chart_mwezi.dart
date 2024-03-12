// ignore_for_file: unnecessary_import

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/chart_data_mwezi.dart';

class BarChartContentMwezi extends StatelessWidget {
  const BarChartContentMwezi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        groupsSpace: 8,
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
                  return 'Wiki-1';
                case 2:
                  return 'Wiki-2';
                case 3:
                  return 'Wiki-3';
                case 4:
                  return 'Wiki-4';
                case 5:
                  return 'Wastani';
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
