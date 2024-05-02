import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fotball_app/components/buttons.dart';
import 'package:fotball_app/components/taemscoretile.dart';
import 'package:fotball_app/components/teamtile.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 24, 24, 41),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'LiveScore',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1),
                ),
                SizedBox(
                  width: 150,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.search,
                      color: Colors.white,
                      size: 30,
                    )),
                Stack(clipBehavior: Clip.none, children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.bell,
                        color: Colors.white,
                        size: 30,
                      )),
                  Container(
                    child: Positioned(
                      left: 29,
                      top: 10,
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Color.fromARGB(255, 232, 126, 60),
                      ),
                    ),
                  )
                ])
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 170,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 62, 58, 255),
                  ),
                ),
                Positioned(
                    left: 161,
                    bottom: 29,
                    top: 0,
                    child: Image.asset(
                      'assets/images/img8.png',
                      height: 210,
                      width: 210,
                    )),
                Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 87,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/img2.png',
                                      height: 15,
                                      width: 15,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'Football',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Liverpool UEFA\nChampion League\nCelebration',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Yesterday, 06.30 PM',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: Expanded(
                  child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Buttons(
                    img: 'assets/images/img2.png',
                    name: 'Soccer',
                    color: Color.fromARGB(255, 232, 126, 60),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Buttons(
                      img: 'assets/images/img3.png',
                      name: 'Basketball',
                      color: Color.fromARGB(255, 53, 49, 73)),
                  SizedBox(
                    width: 20,
                  ),
                  Buttons(
                      img: 'assets/images/img4.png',
                      name: 'Football',
                      color: Color.fromARGB(255, 53, 49, 73)),
                  SizedBox(
                    width: 20,
                  ),
                  Buttons(
                      img: 'assets/images/img5.png',
                      name: 'Baseball',
                      color: Color.fromARGB(255, 53, 49, 73)),
                  SizedBox(
                    width: 20,
                  ),
                  Buttons(
                      img: 'assets/images/img6.png',
                      name: 'Tennis',
                      color: Color.fromARGB(255, 53, 49, 73)),
                  SizedBox(
                    width: 20,
                  ),
                  Buttons(
                      img: 'assets/images/img7.png',
                      name: 'Volleyball',
                      color: Color.fromARGB(255, 53, 49, 73))
                ],
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Teamytile(
                  name: 'La Liga', sub: 'Spain', img: 'assets/images/img9.png'),
            ),
            Teamscore(
                img1: 'assets/images/img10.png',
                img2: 'assets/images/img11.png',
                name1: ' Barcelona',
                score1: '2',
                name2: 'Real madrid',
                score2: '0',
                text: 'HT'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Teamytile(
                  name: 'Premier League',
                  sub: 'England',
                  img: 'assets/images/img12.png'),
            ),
            Teamscore(
                img1: 'assets/images/img13.png',
                img2: 'assets/images/img14.png',
                name1: ' Aston villa',
                score1: '2',
                name2: 'Liverpool',
                score2: '3',
                text: 'FT'),
          ]),
        )
        // bottomNavigationBar: BottomNavigationBar(items: bo),
        );
  }
}
