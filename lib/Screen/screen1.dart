import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:live_score_football_app/tabs/tab1.dart';

class Screen1 extends StatefulWidget {
  final Function(int) onNavigate;

  const Screen1({super.key, required this.onNavigate});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  // Variable d'état pour suivre l'index sélectionné dans BottomNavigationBar
  int _selectedIndex = 0;

  // Fonction pour changer l'index sélectionné et naviguer vers les pages correspondantes
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Met à jour l'index sélectionné
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: DefaultTabController(
          length: 4, // Nombre d'onglets
          child: Column(
            children: [
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/img/moi.jpg"),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bodri Mbg",
                            style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ))),
                        Text("Tue, 21 Novembre 2024",
                            style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ))),
                      ],
                    ),
                    const Spacer(),
                    const Row(
                      children: [
                        CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.white,
                          child: Icon(
                            IconsaxPlusLinear.search_normal_1,
                            size: 23,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.white,
                          child: Icon(
                            IconsaxPlusLinear.notification,
                            size: 23,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              ButtonsTabBar(
                backgroundColor: const Color(0xff422f96),
                unselectedBackgroundColor: Colors.white,
                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: const TextStyle(
                  color: Color(0xff422f96),
                ),
                height: 38,
                buttonMargin: const EdgeInsets.symmetric(
                    horizontal: 10), // Espace entre les onglets
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 10), // Agrandir les onglets
                physics: const BouncingScrollPhysics(),
                tabs: const [
                  Tab(
                    text: "Yesterday",
                  ),
                  Tab(
                    text: "Today",
                  ),
                  Tab(text: "Tomorrow"),
                  Tab(
                    text: "Thu. 23 Nov",
                  ),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    Center(child: Text("Page 1: POPULAR")),
                    Tab1(),
                    Center(child: Text("Page 3: VEGETABLES")),
                    Center(child: Text("Page 4: Flash Side")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
