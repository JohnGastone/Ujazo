// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, unused_label

import 'package:dashboard/screens/components/chart_container.dart';
import 'package:dashboard/widgets/grafu_mwezi.dart';
import 'package:dashboard/widgets/grafu_wiki.dart';
import 'package:dashboard/widgets/bar_chart_wiki.dart';
import 'package:dashboard/widgets/vinywaji_grid.dart';
import 'package:dashboard/widgets/statistics_grid.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';
import '../widgets/bar_chart_mwezi.dart';
import '../widgets/kaziZaMwishoGrid.dart';
import '../widgets/kaziZaMwishoHeader.dart.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 205, 208, 214),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              color: Color.fromARGB(255, 226, 219, 219)),
        ),
        elevation: 2,
        backgroundColor: Colors.transparent,
        iconTheme:
            const IconThemeData(color: Color.fromARGB(255, 177, 120, 120)),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: const Icon(
              Icons.search,
              color: Color.fromARGB(255, 177, 120, 120),
            ),
          ),
          Image.asset(
            'images/ujazo.png',
            height: 150,
            width: 120,
          ),
        ],
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RichText(
                text: TextSpan(
                  text: "Habari ",
                  style: GoogleFonts.spaceMono(color: kDarkBlue, fontSize: 20),
                  children: [
                    TextSpan(
                      text: "Opareta",
                      style: GoogleFonts.spaceMono(
                          color: kDarkBlue, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ", Karibu tena!",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Kazi Zilizopita",
                    style: GoogleFonts.spaceMono(
                        fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.calendar_month_rounded,
                    color: Colors.blueGrey,
                    size: 18,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const KinywajiGrid(),
              const SizedBox(
                height: 20,
              ),
              const KaziZaMwishoHeader(),
              const SizedBox(
                height: 15,
              ),
              const KaziZaMwishoGrid(),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Takwimu",
                    style: GoogleFonts.spaceMono(
                        fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.bar_chart, color: Colors.blueGrey)
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const TakwimuGrid(),
              const SizedBox(
                height: 15,
              ),
              const ActivityHeaderWiki(),
              const ChartContainer(chart: BarChartContentWiki()),
              const ActivityHeaderMwezi(),
              const ChartContainer(chart: BarChartContentMwezi())
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Kazi zilizopita',
    'Kazi ya Mwisho',
    'Takwimu',
    'Grafu',
    'Grafu ya Wiki',
    'Grafu ya Mwezi'
  ];

  var item;

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query:
          '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (item in searchTerms) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (item in searchTerms) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
