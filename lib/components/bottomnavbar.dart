

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fotball_app/screens/explore.dart';
import 'package:fotball_app/screens/homescreen.dart';

import 'package:fotball_app/screens/profile.dart';
import 'package:fotball_app/screens/standing.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {

  final screens =[Homescreen(),Exprolescreen(),Standingscreen(),Profitescreen()];

  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar:BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        currentIndex: currentindex,backgroundColor:    Color.fromARGB(255, 24, 24, 41),onTap:(index){
          setState(() {
            currentindex = index;
          });
        }
        ,
        
        
        items: [
          BottomNavigationBarItem(icon: currentindex==0?Column(children: [Text('Home',style: TextStyle(color: Color.fromARGB(255, 10, 14, 227)),),SizedBox(height: 5.h,),CircleAvatar(radius: 5.r,backgroundColor: Color.fromARGB(255, 10, 14, 227),)],):Icon(Icons.home_outlined),label: '',backgroundColor: Color.fromARGB(255, 24, 24, 41) ),
          BottomNavigationBarItem(icon: currentindex==1?Column(children: [Text('Explore',style: TextStyle(color: Color.fromARGB(255, 10, 14, 227)),),SizedBox(height: 5.h,),CircleAvatar(radius: 5.r,backgroundColor: Color.fromARGB(255, 10, 14, 227),)],):Icon(Icons.explore_outlined),label: '',backgroundColor: Color.fromARGB(255, 24, 24, 41) ),
          BottomNavigationBarItem(icon: currentindex==2?Column(children: [Text('Standings',style: TextStyle(color: Color.fromARGB(255, 10, 14, 227)),),SizedBox(height: 5.h,),CircleAvatar(radius: 5.r,backgroundColor: Color.fromARGB(255, 10, 14, 227),)],):Icon(Icons.analytics_outlined),label: '',backgroundColor: Color.fromARGB(255, 24, 24, 41) ),
          BottomNavigationBarItem(icon: currentindex==3?Column(children: [Text('My Profile',style: TextStyle(color: Color.fromARGB(255, 10, 14, 227)),),SizedBox(height: 5.h,),CircleAvatar(radius: 5.r,backgroundColor: Color.fromARGB(255, 10, 14, 227),)],):Icon(Icons.person_outline_outlined),label: '',backgroundColor: Color.fromARGB(255, 24, 24, 41) )


        ]) ,
        body: screens[currentindex],

    );
  }
}