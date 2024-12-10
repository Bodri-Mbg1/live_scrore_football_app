import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class Tab1 extends StatefulWidget {
  final Function(int) onNavigate;

  const Tab1({super.key, required this.onNavigate});

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Container(
            alignment: Alignment.center,
            height: 270,
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
                )),
            child: Column(
              children: [
                SizedBox(height: 7),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                      Text(
                        'Live Now',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0,
                        )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 0),
                Padding(
                  padding: const EdgeInsets.only(left: 2, right: 2, top: 15),
                  child: GestureDetector(
                    onTap: () {
                      widget.onNavigate(1);
                    },
                    child: Container(
                        height: 220,
                        width: 385,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView(
                            children: [
                              Row(
                                children: [
                                  Text("Barcelona vs Real Madrid (El Clásico)",
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        color: Color(0xff422f96),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 0,
                                      ))),
                                  Spacer(),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 23,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color(0xfff3f2f9),
                                    ),
                                    child: Text(
                                      '32:54',
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        color: Color(0xff422f96),
                                        fontSize: 12,
                                        letterSpacing: 0,
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 18),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 40,
                                        backgroundColor: Color(0xfff8f8fa),
                                        child: Image.asset(
                                          'assets/img/Logo_Real_Madrid.svg.png',
                                          height: 45,
                                          width: 45,
                                        ),
                                      ),
                                      Text('Real Madrid',
                                          style: GoogleFonts.roboto(
                                              textStyle: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          )))
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      Text('0 - 0',
                                          style: GoogleFonts.roboto(
                                              textStyle: const TextStyle(
                                            color: Color(0xff422f96),
                                            fontSize: 35,
                                            fontWeight: FontWeight.w400,
                                          ))),
                                      Container(
                                        height: 20,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Color(0xfff3f2f9),
                                        ),
                                        child: Center(
                                          child: Text('1st Half Match',
                                              style: GoogleFonts.roboto(
                                                  textStyle: const TextStyle(
                                                color: Color(0xff422f96),
                                                fontSize: 10,
                                              ))),
                                        ),
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 40,
                                        backgroundColor: Color(0xfff8f8fa),
                                        child: Image.asset(
                                          'assets/img/Logo_FC_Barcelona.svg.png',
                                          height: 45,
                                          width: 45,
                                        ),
                                      ),
                                      Text('Barcelona',
                                          style: GoogleFonts.roboto(
                                              textStyle: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          )))
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {
                                  widget.onNavigate(2);
                                },
                                child: Container(
                                    alignment: Alignment.center,
                                    height: 40,
                                    width: 379,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff422f96),
                                    ),
                                    child: Text('Watch Live',
                                        style: GoogleFonts.roboto(
                                            textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        )))),
                              )
                            ],
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
                    children: [
                      Text('League Premier',
                          style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                  color: Color(0xff422f96),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600))),
                      const Spacer(),
                      CircleAvatar(
                        radius: 18, // Taille du cercle
                        backgroundColor: Colors.transparent,
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey, // Couleur du contour
                              width: 1, // Épaisseur du contour
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_forward_rounded,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    alignment: Alignment.center,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xfff3f2f9),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: -160,
                          top: 10,
                          left: 80,
                          child: Opacity(
                            opacity: 0.1,
                            child: Image.asset(
                              'assets/img/premier-league-5.png',
                              width: 190,
                              height: 190,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 5),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.white,
                                    child: Image.asset(
                                      'assets/img/Logo_Chelsea.svg.png',
                                      height: 45,
                                      width: 45,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text('Chelsea',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        height: 0.9,
                                      )))
                                ],
                              ),
                              const Spacer(),
                              Column(
                                children: [
                                  const SizedBox(height: 10),
                                  Text('01:00 AM',
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -1,
                                      ))),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            IconsaxPlusBold.notification,
                                            size: 20,
                                            color: Color(0xff422f96),
                                          ),
                                          SizedBox(width: 5),
                                          Text('Reminder',
                                              style: GoogleFonts.roboto(
                                                  textStyle: const TextStyle(
                                                color: Color(0xff422f96),
                                                fontSize: 15,
                                              ))),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.white,
                                    child: Image.asset(
                                      'assets/img/Arsenal_FC.svg.png',
                                      height: 45,
                                      width: 45,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text('Arsenal',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        height: 0.9,
                                      )))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    alignment: Alignment.center,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff3f2f9),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: -160,
                          top: 10,
                          left: 80,
                          child: Opacity(
                            opacity: 0.1,
                            child: Image.asset(
                              'assets/img/premier-league-5.png',
                              width: 190,
                              height: 190,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 5),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.white,
                                    child: Image.asset(
                                      'assets/img/Manchester_United_FC_crest.svg.png',
                                      height: 45,
                                      width: 45,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text('Manchester\nUnited',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        height: 0.9,
                                      )))
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  SizedBox(height: 10),
                                  Text('11:00 AM',
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -1,
                                      ))),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            IconsaxPlusBold.notification,
                                            size: 20,
                                            color: Color(0xff422f96),
                                          ),
                                          SizedBox(width: 5),
                                          Text('Reminder',
                                              style: GoogleFonts.roboto(
                                                  textStyle: const TextStyle(
                                                color: Color(0xff422f96),
                                                fontSize: 15,
                                              ))),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.white,
                                    child: Image.asset(
                                      'assets/img/Tottenham_Hotspur.svg.png',
                                      height: 45,
                                      width: 45,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text('Tottenham\nHotspur',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        height: 0.9,
                                      )))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
                    children: [
                      Text('Trending News',
                          style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                  color: Color(0xff422f96),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600))),
                      const Spacer(),
                      CircleAvatar(
                        radius: 18, // Taille du cercle
                        backgroundColor: Colors.transparent,
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey, // Couleur du contour
                              width: 1, // Épaisseur du contour
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_forward_rounded,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    alignment: Alignment.center,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xfff3f2f9),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: -160,
                          top: 10,
                          left: 80,
                          child: Opacity(
                            opacity: 0.1,
                            child: Image.asset(
                              'assets/img/premier-league-5.png',
                              width: 190,
                              height: 190,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 5),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.white,
                                    child: Image.asset(
                                      'assets/img/Logo_Chelsea.svg.png',
                                      height: 45,
                                      width: 45,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text('Chelsea',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        height: 0.9,
                                      )))
                                ],
                              ),
                              const Spacer(),
                              Column(
                                children: [
                                  const SizedBox(height: 10),
                                  Text('01:00 AM',
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -1,
                                      ))),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            IconsaxPlusBold.notification,
                                            size: 20,
                                            color: Color(0xff422f96),
                                          ),
                                          SizedBox(width: 5),
                                          Text('Reminder',
                                              style: GoogleFonts.roboto(
                                                  textStyle: const TextStyle(
                                                color: Color(0xff422f96),
                                                fontSize: 15,
                                              ))),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.white,
                                    child: Image.asset(
                                      'assets/img/Arsenal_FC.svg.png',
                                      height: 45,
                                      width: 45,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text('Arsenal',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        height: 0.9,
                                      )))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    alignment: Alignment.center,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff3f2f9),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: -160,
                          top: 10,
                          left: 80,
                          child: Opacity(
                            opacity: 0.1,
                            child: Image.asset(
                              'assets/img/premier-league-5.png',
                              width: 190,
                              height: 190,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 5),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.white,
                                    child: Image.asset(
                                      'assets/img/Manchester_United_FC_crest.svg.png',
                                      height: 45,
                                      width: 45,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text('Manchester\nUnited',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        height: 0.9,
                                      )))
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  SizedBox(height: 10),
                                  Text('11:00 AM',
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -1,
                                      ))),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            IconsaxPlusBold.notification,
                                            size: 20,
                                            color: Color(0xff422f96),
                                          ),
                                          SizedBox(width: 5),
                                          Text('Reminder',
                                              style: GoogleFonts.roboto(
                                                  textStyle: const TextStyle(
                                                color: Color(0xff422f96),
                                                fontSize: 15,
                                              ))),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.white,
                                    child: Image.asset(
                                      'assets/img/Tottenham_Hotspur.svg.png',
                                      height: 45,
                                      width: 45,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text('Tottenham\nHotspur',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        height: 0.9,
                                      )))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
