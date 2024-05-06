import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fotball_app/components/searchtile.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    int currentindex = 1;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 24, 24, 41),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  width: 260.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 24, 24, 41),
                    borderRadius: BorderRadius.all(Radius.circular(13.r)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search your team ...',
                          hintStyle:
                              TextStyle(fontSize: 16.sp, color: Colors.grey),
                          prefixIcon: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Searchpage()));
                            },
                            icon: Icon(
                              CupertinoIcons.search,
                              color: Colors.grey,
                            ),
                          ),
                          border: InputBorder.none),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 13.w,
              ),
              Text(
                'Cancle',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 80.h,
            child: Container(
              color: Colors.cyan,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Searchtile(name: 'Barcelona VS Real Madrid', sub: 'Monday, 12 Feb 2021 .02.30am', img1: 'assets/images/img11.png', img2: 'assets/images/img10.png'),
         
          Searchtile(name: 'Aersenal VS Aston Villa', sub: ' Tuesday, 9 Mar 2021 . 05.00am', img1: 'assets/images/img13.png', img2: 'assets/images/img15.png'),
          
          Searchtile(name: 'Chelsea VS Liverpool', sub: '   Satuday,14 Mar 2021.01.00am', img1: 'assets/images/img14.png', img2: 'assets/images/img17.png'),
         
          Searchtile(name: 'Dortmund VS  München', sub: 'Wednesday,8 Apr 2021.02.30am', img1: 'assets/images/img27.png', img2: 'assets/images/img26.png'),
         
          Searchtile(name: 'Real Madrid VS Arsenal', sub: '   Friday, 21 Apr 2021 . 00.45 am', img1: 'assets/images/img15.png', img2: 'assets/images/img11.png'),
          
          Searchtile(name: '  Tottenham VS Watford', sub: '     Friday, 21 Apr 2021 .02.45am', img1: 'assets/images/img28.png', img2: 'assets/images/img18.png'),
          
          Searchtile(name: '  Swansea City VS Fulham', sub: '  unday, 2 May 2021 . 04.45 am', img1: 'assets/images/img30.png', img2: 'assets/images/img29.png'),
          
          Searchtile(name: ' Wolfsburg VS Liverpool', sub: '   sunday, 15 May 2021.01.00 am', img1: 'assets/images/img11.png', img2: 'assets/images/img10.png')
        
        
        ]))),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentindex,
            backgroundColor: Color.fromARGB(255, 24, 24, 41),
            onTap: (index) {},
            items: [
              BottomNavigationBarItem(
                  icon: currentindex == 0
                      ? Column(
                          children: [
                            Text(
                              'Home',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 10, 14, 227)),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            CircleAvatar(
                              radius: 5.r,
                              backgroundColor: Color.fromARGB(255, 10, 14, 227),
                            )
                          ],
                        )
                      : Icon(Icons.home_outlined),
                  label: '',
                  backgroundColor: Color.fromARGB(255, 24, 24, 41)),
              BottomNavigationBarItem(
                  icon: currentindex == 1
                      ? Column(
                          children: [
                            Text(
                              'Explore',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 10, 14, 227)),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            CircleAvatar(
                              radius: 5.r,
                              backgroundColor: Color.fromARGB(255, 10, 14, 227),
                            )
                          ],
                        )
                      : Icon(Icons.explore_outlined),
                  label: '',
                  backgroundColor: Color.fromARGB(255, 24, 24, 41)),
              BottomNavigationBarItem(
                  icon: currentindex == 2
                      ? Column(
                          children: [
                            Text(
                              'Standing',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 10, 14, 227)),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            CircleAvatar(
                              radius: 5.r,
                              backgroundColor: Color.fromARGB(255, 10, 14, 227),
                            )
                          ],
                        )
                      : Icon(Icons.analytics_outlined),
                  label: '',
                  backgroundColor: Color.fromARGB(255, 24, 24, 41)),
              BottomNavigationBarItem(
                  icon: currentindex == 3
                      ? Column(
                          children: [
                            Text(
                              'Profile',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 10, 14, 227)),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            CircleAvatar(
                              radius: 5.r,
                              backgroundColor: Color.fromARGB(255, 10, 14, 227),
                            )
                          ],
                        )
                      : Icon(Icons.person_outline_outlined),
                  label: '',
                  backgroundColor: Color.fromARGB(255, 24, 24, 41))
            ]));
  }
}
