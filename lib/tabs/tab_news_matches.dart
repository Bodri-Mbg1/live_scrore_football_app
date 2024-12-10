import 'package:flutter/material.dart';

class TabNewsMatches extends StatefulWidget {
  const TabNewsMatches({super.key});

  @override
  State<TabNewsMatches> createState() => _TabNewsMatchesState();
}

class _TabNewsMatchesState extends State<TabNewsMatches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff0f0f0),
        body: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: ListView(
            children: [
              Container(
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/img/News2.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('MatchHighlights',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                          SizedBox(height: 10),
                          Text(
                              "North London Derby: Arsenal\nTriumphs Over Tottenham",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff422f96),
                                  height: 1.1,
                                  letterSpacing: 0)),
                          SizedBox(height: 7),
                          Text(
                            "Arsenal emerged victorious in an...",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 27),
                          Text('45 Minutes Ago',
                              style: TextStyle(color: Colors.black26))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/img/News4.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('MatchHighlights',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                          SizedBox(height: 10),
                          Text(
                              "North London Derby: Arsenal\nTriumphs Over Tottenham",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff422f96),
                                  height: 1.1,
                                  letterSpacing: 0)),
                          SizedBox(height: 7),
                          Text(
                            "Arsenal emerged victorious in an...",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 27),
                          Text('45 Minutes Ago',
                              style: TextStyle(color: Colors.black26))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/img/News1.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('MatchHighlights',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                          SizedBox(height: 10),
                          Text(
                              "North London Derby: Arsenal\nTriumphs Over Tottenham",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff422f96),
                                  height: 1.1,
                                  letterSpacing: 0)),
                          SizedBox(height: 7),
                          Text(
                            "Arsenal emerged victorious in an...",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 27),
                          Text('45 Minutes Ago',
                              style: TextStyle(color: Colors.black26))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
