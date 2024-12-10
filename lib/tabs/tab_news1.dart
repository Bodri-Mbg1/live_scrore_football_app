import 'package:flutter/material.dart';
import 'package:live_score_football_app/Screen/screen_news_detail.dart';

class TabNews1 extends StatefulWidget {
  const TabNews1({super.key});

  @override
  State<TabNews1> createState() => _TabNews1State();
}

class _TabNews1State extends State<TabNews1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff0f0f0),
        body: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: ListView(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewsDetailPage(
                        title:
                            "North London Derby: Arsenal Triumphs Over Tottenham",
                        description:
                            "Arsenal emerged victorious in an intense match, showcasing exceptional performances from both teams. The North London Derby, one of the most anticipated clashes in English football, lived up to its billing as both Arsenal and Tottenham delivered a spectacle filled with drama, skill, and determination.\nFrom the opening whistle, Arsenal displayed their intent, dominating possession and creating multiple chances. Gabriel Martinelli’s pace on the wings and Bukayo Saka’s creativity caused constant problems for the Tottenham defense. It was, however, captain Martin Ødegaard who broke the deadlock with a stunning strike from outside the box, leaving the Spurs goalkeeper with no chance.\nTottenham responded valiantly, with Harry Kane and Son Heung-Min leading their attacking efforts. A well-coordinated move saw Son hit the post just before halftime, narrowly missing the equalizer.\nThe second half saw both teams increase their intensity, but Arsenal’s defensive line, led by William Saliba, stood firm. A crucial counterattack in the 70th minute resulted in a penalty, calmly converted by Saka, extending Arsenal’s lead.",
                        imageUrl: "assets/img/News3.jpg",
                        date: "45 Minutes Ago",
                        source: "MatchHighlights",
                      ),
                    ),
                  );
                },
                child: Container(
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
                              "assets/img/News3.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('MatchHighlights',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey)),
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
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewsDetailPage(
                        title:
                            "Portugal’s Road to Glory: The Quest for a New Era in Football",
                        description:
                            "The Portugal national football team has long been recognized for its talent and flair on the international stage. With the golden generation of Cristiano Ronaldo, Luís Figo, and others leaving a significant mark on world football, the question arises: what does the future hold for Portuguese football?\nThe Road to Glory represents the next phase in Portugal's football evolution. As the national team transitions to a new era, the focus shifts to emerging stars, innovative strategies, and the hope of securing more international titles. From youth development to tactical advancements, Portugal is on a quest to build a team that will not only honor its past achievements but also establish itself as a dominant force in world football for years to come.\nThe journey is not just about replacing legendary players; it's about fostering a collective identity and strengthening the depth of the squad. With a new generation of talent eager to prove themselves, Portugal is primed to continue its legacy, aiming for success on the biggest stages like the European Championship and the World Cup. The quest for glory is more than just a dream—it's a goal within reach.",
                        imageUrl: "assets/img/News4.jpg",
                        date: "45 Minutes Ago",
                        source: "MatchHighlights",
                      ),
                    ),
                  );
                },
                child: Container(
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
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey)),
                            SizedBox(height: 10),
                            Text(
                                "Portugal’s Road to Glory: The\nQuest for a New Era in Football",
                                style: TextStyle(
                                    fontSize: 16,
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
