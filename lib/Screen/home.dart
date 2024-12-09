import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:live_score_football_app/Screen/screen1.dart';
import 'package:live_score_football_app/Screen/screen_matches.dart';
import 'package:live_score_football_app/Screen/screen_news.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  // Liste des pages
  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      Screen1(onNavigate: _onItemTapped),
      ScreenNews(onNavigate: _onItemTapped),
      ScreenMatches(onNavigate: _onItemTapped),
      const Center(child: Text("Page Search")),
      const Center(child: Text("Page Profile")),
    ];
  }

  // Fonction pour changer d'onglet
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0f0),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xff422f96),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 0
                  ? IconsaxPlusBold.home_1 // Icône active
                  : IconsaxPlusLinear.home_1, // Icône inactive
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 1
                  ? IconsaxPlusBold.note_2 // Icône active
                  : IconsaxPlusLinear.note_2, // Icône inactive
            ),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 2
                  ? IconsaxPlusBold.cup // Icône active
                  : IconsaxPlusLinear.cup, // Icône inactive
            ),
            label: 'Matches',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 3
                  ? IconsaxPlusBold.search_normal_1 // Icône active
                  : IconsaxPlusLinear.search_normal_1, // Icône inactive
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 4
                  ? IconsaxPlusBold.user // Icône active
                  : IconsaxPlusLinear.user, // Icône inactive
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
