import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:live_score_football_app/tabs/tab_news1.dart';

class ScreenNews extends StatefulWidget {
  final Function(int) onNavigate;

  const ScreenNews({super.key, required this.onNavigate});

  @override
  State<ScreenNews> createState() => _ScreenNewsState();
}

class _ScreenNewsState extends State<ScreenNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0f0),
      body: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.white,
                    child: Icon(
                      IconsaxPlusLinear.search_normal_1,
                      size: 23,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(),
                  Text("Trending News",
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          color: Colors.black,
                          letterSpacing: -0.1,
                          fontWeight: FontWeight.w700)),
                  const Spacer(),
                  const CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.white,
                    child: Icon(
                      IconsaxPlusBroken.more,
                      size: 23,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 390,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 8.0, right: 8.0),
                      child: Row(
                        children: [
                          Text('Latest News',
                              style: GoogleFonts.roboto(
                                  fontSize: 19,
                                  color: const Color(0xff422f96),
                                  letterSpacing: -0.1,
                                  fontWeight: FontWeight.w700)),
                          const Spacer(),
                          Container(
                            height: 26,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('See All',
                                    style: GoogleFonts.roboto(
                                        color: const Color(0xff422f96))),
                                const SizedBox(width: 5),
                                const Icon(
                                  Icons.arrow_forward_rounded,
                                  size: 15,
                                  color: Color(0xff422f96),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/img/News2.png',
                            height: 200,
                            width: 600,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    IconsaxPlusLinear.heart,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 5),
                                  Text('32',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                              SizedBox(width: 10),
                              Row(
                                children: [
                                  Icon(
                                    IconsaxPlusLinear.message,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 5),
                                  Text('14',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -2.5)),
                                ],
                              ),
                              SizedBox(width: 10),
                              Row(
                                children: [
                                  Icon(
                                    IconsaxPlusLinear.share,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 5),
                                  Text('11',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -2.5)),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text('MatchHighlights • 45 Minutes Ago',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                          const SizedBox(height: 5),
                          Text(
                              'Bayern Munich Defeats Dortmund in a \nClassic Bunderliga Clash',
                              style: GoogleFonts.roboto(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w800,
                                  color: const Color(0xff422f96),
                                  letterSpacing: 0)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            ButtonsTabBar(
              backgroundColor:
                  const Color(0xff422f96), // Couleur de l'onglet sélectionné
              unselectedBackgroundColor:
                  Colors.white, // Couleur des onglets non sélectionnés
              labelStyle: const TextStyle(
                color: Colors.white, // Couleur du texte de l'onglet sélectionné
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: const TextStyle(
                color: Color(
                    0xff422f96), // Couleur du texte des onglets non sélectionnés
                fontWeight: FontWeight.w500,
              ),
              height: 35, // Hauteur des onglets
              buttonMargin: const EdgeInsets.symmetric(
                  horizontal: 6), // Marges entre les onglets
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10), // Padding interne
              tabs: const [
                Tab(
                  child: SizedBox(
                    width: 100, // Largeur fixe pour tous les onglets
                    child: Center(
                      child: Text("Yesterday"),
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    width: 100,
                    child: Center(
                      child: Text("Today"),
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    width: 100,
                    child: Center(
                      child: Text("Tomorrow"),
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    width: 100,
                    child: Center(
                      child: Text("Thu. 23 Nov"),
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    width: 100,
                    child: Center(
                      child: Text("Fri. 24 Nov"),
                    ),
                  ),
                ),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  TabNews1(),
                  Center(child: Text('Today')),
                  Center(child: Text('Tomorrow')),
                  Center(child: Text('Thu. 23 Nov')),
                  Center(child: Text('Fri. 24 Nov')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
