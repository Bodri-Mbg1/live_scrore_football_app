import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:live_score_football_app/tabs/tab_news_matches.dart';
import 'package:live_score_football_app/tabs/tab_standings.dart';

class ScreenMatches extends StatefulWidget {
  final Function(int) onNavigate; // Propriété pour la navigation

  const ScreenMatches({super.key, required this.onNavigate}); // Constructeur

  @override
  State<ScreenMatches> createState() => _ScreenMatchesState();
}

class _ScreenMatchesState extends State<ScreenMatches> {
  // ignore: unused_field
  int _selectedIndex = 0;

  // ignore: unused_element
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff422f96),
      body: DefaultTabController(
        length: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Positioned(
                    child: Opacity(
                      opacity: 0.1,
                      child: Image.asset(
                        'assets/img/premier-league-5.png',
                        width: 270,
                        height: 270,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        widget.onNavigate(0);
                      },
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundColor: Color(0xff3e2c8d),
                        child: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ),
                    const Spacer(),
                    const Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xff3e2c8d),
                          child: Icon(IconsaxPlusLinear.export,
                              color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xff3e2c8d),
                          child:
                              Icon(IconsaxPlusLinear.more, color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundColor: const Color(0xff3e2c8d),
                            child: Image.asset(
                              'assets/img/Logo_Real_Madrid.svg.png',
                              height: 55,
                              width: 55,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text('Real Madrid',
                              style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              )))
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text('8',
                                  style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 45,
                                    fontWeight: FontWeight.w400,
                                  ))),
                              const SizedBox(width: 10),
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color(0xff3e2c8d),
                                ),
                                child: Text(
                                  '35:00',
                                  style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    letterSpacing: 0,
                                  )),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text('2',
                                  style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 45,
                                    fontWeight: FontWeight.w400,
                                  ))),
                            ],
                          ),
                          Container(
                            height: 20,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.transparent,
                            ),
                            child: Center(
                              child: Text('Frist Match',
                                  style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ))),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundColor: const Color(0xff3e2c8d),
                            child: Image.asset(
                              'assets/img/Logo_FC_Barcelona.svg.png',
                              height: 55,
                              width: 55,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text('Barcelona',
                              style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              )))
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            const TabBar(
              labelColor: Colors.white, // Couleur du texte actif
              unselectedLabelColor: Colors.grey, // Couleur des textes inactifs
              labelStyle: TextStyle(
                fontSize: 12, // Taille du texte actif
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 10, // Taille des textes inactifs
              ),
              indicatorColor: Colors.white, // Couleur de l'indicateur
              indicatorWeight: 2, // Épaisseur de l'indicateur
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding: EdgeInsets.symmetric(horizontal: 15),
              tabs: [
                Tab(
                  text: "Details",
                ),
                Tab(
                  text: "Standings",
                ),
                Tab(text: "News"),
                Tab(
                  text: "Season",
                ),
                Tab(
                  text: "Statistics",
                ),
              ],
            ),
            const Flexible(
              child: TabBarView(
                children: [
                  Center(child: Text("Details")),
                  TabStandings(),
                  TabNewsMatches(),
                  Center(child: Text("Season")),
                  Center(child: Text("Statistics")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
