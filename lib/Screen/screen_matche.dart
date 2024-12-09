import 'package:flutter/material.dart';

class ScreenMatche extends StatefulWidget {
  const ScreenMatche({super.key});

  @override
  State<ScreenMatche> createState() => _ScreenMatcheState();
}

class _ScreenMatcheState extends State<ScreenMatche> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              gradient: const LinearGradient(
                colors: [
                  Color(0xff422f96),
                  Color(0xffc8c4e2),
                ],
                begin: Alignment.topCenter, // Point de départ du dégradé
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
