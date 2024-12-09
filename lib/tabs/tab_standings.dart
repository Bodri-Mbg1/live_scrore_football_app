import 'package:flutter/material.dart';

class TabStandings extends StatefulWidget {
  const TabStandings({super.key});

  @override
  State<TabStandings> createState() => _TabStandingsState();
}

class _TabStandingsState extends State<TabStandings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0f0),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
        child: Container(
          height: 800,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), // Arrondi en haut à gauche
              topRight: Radius.circular(20), // Arrondi en haut à droite
            ),
          ),
          child: Column(
            children: [
              // Boutons "All", "Home", "Away" et "Sort by"
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        _buildFilterButton(context, 'All', isActive: true),
                        const SizedBox(width: 10),
                        _buildFilterButton(context, 'Home'),
                        const SizedBox(width: 10),
                        _buildFilterButton(context, 'Away'),
                      ],
                    ),
                    _buildFilterButton(context, 'Sort by', hasIcon: true),
                  ],
                ),
              ),
              // Tableau des données
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: DataTable(
                    columnSpacing: 18,
                    horizontalMargin: 16,
                    headingRowHeight: 25,
                    dataRowHeight: 45,
                    headingTextStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    dataTextStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    headingRowColor:
                        MaterialStateProperty.all(Colors.transparent),
                    columns: const [
                      DataColumn(label: Text('#')),
                      DataColumn(label: Text('Team')),
                      DataColumn(label: Text('Point')),
                      DataColumn(label: Text('Won')),
                      DataColumn(label: Text('Lose')),
                      DataColumn(label: Text('Draw')),
                    ],
                    rows: _buildTableRows(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterButton(BuildContext context, String text,
      {bool isActive = false, bool hasIcon = false}) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor:
            isActive ? const Color(0xff3e2c8d) : const Color(0xfff0f0f0),
        foregroundColor: isActive ? Colors.white : Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 14),
          ),
          if (hasIcon) ...[
            const SizedBox(width: 5),
            const Icon(Icons.arrow_drop_down, size: 18),
          ],
        ],
      ),
    );
  }

  // Lignes de données du tableau
  List<DataRow> _buildTableRows() {
    const teams = [
      {
        'rank': 1,
        'logo': 'assets/img/Logo_Chelsea.svg.png',
        'team': 'Chelsea',
        'point': 40,
        'won': 13,
        'lose': 1,
        'draw': 1,
      },
      {
        'rank': 2,
        'logo': 'assets/img/Arsenal_FC.svg.png',
        'team': 'Arsenal',
        'point': 38,
        'won': 12,
        'lose': 2,
        'draw': 2,
      },
      {
        'rank': 3,
        'logo': 'assets/img/Manchester_United_FC_crest.svg.png',
        'team': 'MU',
        'point': 34,
        'won': 11,
        'lose': 3,
        'draw': 3,
      },
      {
        'rank': 4,
        'logo': 'assets/img/Tottenham_Hotspur.svg.png',
        'team': 'Tottenham',
        'point': 28,
        'won': 10,
        'lose': 5,
        'draw': 1,
      },
      {
        'rank': 5,
        'logo': 'assets/img/Liverpool_FC.svg.png',
        'team': 'Liverpool',
        'point': 27,
        'won': 8,
        'lose': 5,
        'draw': 4,
      },
      {
        'rank': 6,
        'logo': 'assets/img/Paris_Saint-Germain_F.C..svg.png',
        'team': 'PSG',
        'point': 26,
        'won': 8,
        'lose': 6,
        'draw': 2,
      },
      {
        'rank': 7,
        'logo': 'assets/img/Logo_Newcastle_United.svg.png',
        'team': 'Newcastle',
        'point': 25,
        'won': 7,
        'lose': 7,
        'draw': 4,
      },
      {
        'rank': 8,
        'logo': 'assets/img/Logo_Manchester_City_2016.svg.png',
        'team': 'MC',
        'point': 24,
        'won': 7,
        'lose': 9,
        'draw': 8,
      },
      {
        'rank': 9,
        'logo': 'assets/img/Wolverhampton_Wanderers.svg.png',
        'team': 'Wolverhampton',
        'point': 24,
        'won': 7,
        'lose': 9,
        'draw': 8,
      },
    ];

    return teams
        .map(
          (team) => DataRow(
            cells: [
              DataCell(Text(team['rank'].toString())),
              DataCell(
                Row(
                  children: [
                    Image.asset(
                      team['logo'].toString(),
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(width: 10),
                    Text(team['team'].toString()),
                  ],
                ),
              ),
              DataCell(Text(team['point'].toString())),
              DataCell(Text(team['won'].toString())),
              DataCell(Text(team['lose'].toString())),
              DataCell(Text(team['draw'].toString())),
            ],
          ),
        )
        .toList();
  }
}
