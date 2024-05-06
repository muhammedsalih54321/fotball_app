import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fotball_app/components/taemscoretile.dart';

import 'package:fotball_app/screens/lineup.dart';

class Matchdetails extends StatefulWidget {
  const Matchdetails({super.key});

  @override
  State<Matchdetails> createState() => _MatchdetailsState();
}

class _MatchdetailsState extends State<Matchdetails> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 24, 24, 41),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 24, 24, 41),
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  )),
            ),
            title: Text(
              'UEFA Champions League',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 38.r,
                        backgroundColor: Color.fromARGB(255, 53, 49, 73),
                        child: Image.asset(
                          'assets/images/img15.png',
                          height: 36.h,
                          width: 36.w,
                        ),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Text(
                        'Arselan',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        '2 - 3',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 38.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Text(
                        '90.15',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 38.r,
                        backgroundColor: Color.fromARGB(255, 53, 49, 73),
                        child: Image.asset(
                          'assets/images/img13.png',
                          height: 36.h,
                          width: 36.w,
                        ),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Text(
                        'Aston villa',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: 380.w,
                height: 50.h,
                child: TabBar(
                  tabs: [
                    Tab(
                      text: 'Match details',
                    ),
                    Tab(
                      text: 'Line up',
                    ),
                    Tab(
                      text: 'H2H',
                    ),
                  ],
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Color.fromARGB(255, 232, 126, 60),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: Color.fromARGB(255, 236, 138, 77)),
                  labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                  unselectedLabelColor: Colors.white,
                ),
              ),
              Expanded(
                  child: TabBarView(children: [
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '8',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Shooting',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '12',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 60.w,
                            ),
                            Text(
                              '22',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 70.w,
                            ),
                            Text(
                              'Attack',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 80.w,
                            ),
                            Text(
                              '29',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '42',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Possesion',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '58',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 65.w,
                            ),
                            Text(
                              '3',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 70.w,
                            ),
                            Container(
                              height: 15.h,
                              width: 10.w,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              'Cards',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 80.w,
                            ),
                            Text(
                              '5',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 70.w,
                            ),
                            Text(
                              '8',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 70.w,
                            ),
                            Text(
                              'Corner',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 84.w,
                            ),
                            Text(
                              '7',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(height: 30.h,),
                        Padding(
                          padding: const EdgeInsets.only(left: 30,right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('Other Match',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                          Text('See all',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),)],),
                        ),
                        SizedBox(height: 25.h,),
                        Teamscore(img1: 'assets/images/img16.png', img2: 'assets/images/img17.png', name1: 'Man United', score1: '2', name2:'Chelsea Fc', score2: '3', text: 'FC'),
                         SizedBox(height: 25.h,),
                        Teamscore(img1: 'assets/images/img18.png', img2: 'assets/images/img19.png', name1: 'Tottenham', score1: '1', name2:'Southamton', score2: '0', text: 'FC'),
                          SizedBox(height: 25.h,),
                        Teamscore(img1: 'assets/images/img18.png', img2: 'assets/images/img19.png', name1: 'Tottenham', score1: '1', name2:'Southamton', score2: '0', text: 'FC')
                      ],
                    ),
                  ),
                ),
                Lineupscreen(),
                Container(),
              ]))
            ],
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //     currentIndex: currentindex,
          //     backgroundColor: Color.fromARGB(255, 24, 24, 41),
          //     onTap: (index) {},
          //     items: [
          //       BottomNavigationBarItem(
          //           icon: currentindex == 0
          //               ? Column(
          //                   children: [
          //                     Text(
          //                       'Home',
          //                       style: TextStyle(
          //                           color: Color.fromARGB(255, 10, 14, 227)),
          //                     ),
          //                     SizedBox(
          //                       height: 5.h,
          //                     ),
          //                     CircleAvatar(
          //                       radius: 5.r,
          //                       backgroundColor:
          //                           Color.fromARGB(255, 10, 14, 227),
          //                     )
          //                   ],
          //                 )
          //               : Icon(Icons.home_outlined),
          //           label: '',
          //           backgroundColor: Color.fromARGB(255, 24, 24, 41)),
          //       BottomNavigationBarItem(
          //           icon: currentindex == 1
          //               ? Column(
          //                   children: [
          //                     Text(
          //                       'Explore',
          //                       style: TextStyle(
          //                           color: Color.fromARGB(255, 10, 14, 227)),
          //                     ),
          //                     SizedBox(
          //                       height: 5.h,
          //                     ),
          //                     CircleAvatar(
          //                       radius: 5.r,
          //                       backgroundColor:
          //                           Color.fromARGB(255, 10, 14, 227),
          //                     )
          //                   ],
          //                 )
          //               : Icon(Icons.explore_outlined),
          //           label: '',
          //           backgroundColor: Color.fromARGB(255, 24, 24, 41)),
          //       BottomNavigationBarItem(
          //           icon: currentindex == 2
          //               ? Column(
          //                   children: [
          //                     Text(
          //                       'Standing',
          //                       style: TextStyle(
          //                           color: Color.fromARGB(255, 10, 14, 227)),
          //                     ),
          //                     SizedBox(
          //                       height: 5.h,
          //                     ),
          //                     CircleAvatar(
          //                       radius: 5.r,
          //                       backgroundColor:
          //                           Color.fromARGB(255, 10, 14, 227),
          //                     )
          //                   ],
          //                 )
          //               : Icon(Icons.analytics_outlined),
          //           label: '',
          //           backgroundColor: Color.fromARGB(255, 24, 24, 41)),
          //       BottomNavigationBarItem(
          //           icon: currentindex == 3
          //               ? Column(
          //                   children: [
          //                     Text(
          //                       'Profile',
          //                       style: TextStyle(
          //                           color: Color.fromARGB(255, 10, 14, 227)),
          //                     ),
          //                     SizedBox(
          //                       height: 5.h,
          //                     ),
          //                     CircleAvatar(
          //                       radius: 5.r,
          //                       backgroundColor:
          //                           Color.fromARGB(255, 10, 14, 227),
          //                     )
          //                   ],
          //                 )
          //               : Icon(Icons.person_outline_outlined),
          //           label: '',
          //           backgroundColor: Color.fromARGB(255, 24, 24, 41))
          //     ])),
    ),);
  }
}
