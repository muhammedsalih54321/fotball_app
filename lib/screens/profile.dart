import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fotball_app/components/profiletile.dart';
import 'package:fotball_app/screens/Articlepage.dart';

class Profitescreen extends StatefulWidget {
  const Profitescreen({super.key});

  @override
  State<Profitescreen> createState() => _ProfitescreenState();
}

class _ProfitescreenState extends State<Profitescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 24, 24, 41),
        body: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Center(
                child: Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: 55.r,
                  backgroundImage: AssetImage('assets/images/img32.png'),
                ),
                Positioned(
                    left: 94,
                    top: 85,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          right: .2,
                          bottom: .1,
                          child: CircleAvatar(
                            radius: 15.r,
                            backgroundColor: Color.fromARGB(255, 24, 24, 41),
                          ),
                        ),
                        CircleAvatar(
                          radius: 14.r,
                          backgroundColor: Color.fromARGB(255, 232, 126, 60),
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>Articlepage()));
                              },
                              icon: Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 14.sp,
                              )),
                        ),
                      ],
                    )),
              ],
            )),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Brian imanuel',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23.sp,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              '#YNWK till the end 🔥',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 340.w,
              height: 45.h,
              child: TabBar(
                tabs: [
                  Tab(
                    text: 'My profile',
                  ),
                  Tab(
                    text: 'Activity',
                  ),
                  Tab(
                    text: 'Settings',
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
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Profiletile(
                        icon: Icon(
                          Icons.person_outline_outlined,
                          color: Colors.grey,
                        ),
                        name: 'Name',
                        sub: 'Brian imanuel'),
                    Padding(
                      padding: const EdgeInsets.only(right: 60, left: 80),
                      child: Divider(
                        thickness: .3,
                        color: Colors.grey,
                      ),
                    ),
                    Profiletile(
                        icon: Icon(
                          Icons.mail_outline_sharp,
                          color: Colors.grey,
                        ),
                        name: 'Email',
                        sub: 'Emailbrians213@gmail.com'),
                    Padding(
                      padding: const EdgeInsets.only(right: 60, left: 80),
                      child: Divider(
                        thickness: .3,
                        color: Colors.grey,
                      ),
                    ),
                    Profiletile(
                        icon: Icon(
                          Icons.phone_outlined,
                          color: Colors.grey,
                        ),
                        name: 'Phone',
                        sub: '+62 821 560 641'),
                    Padding(
                      padding: const EdgeInsets.only(right: 60, left: 80),
                      child: Divider(
                        thickness: .3,
                        color: Colors.grey,
                      ),
                    ),
                    Profiletile(
                        icon: Icon(
                          CupertinoIcons.location_solid,
                          color: Colors.grey,
                        ),
                        name: 'Address',
                        sub: 'Long beach, California'),
                  ],
                ),
              ),
              Container(),
              Container(),
            ]))
          ],
        )),
      ),
    );
  }
}
