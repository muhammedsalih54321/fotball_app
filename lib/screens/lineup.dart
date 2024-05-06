

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Lineupscreen extends StatefulWidget {
  const Lineupscreen({super.key});

  @override
  State<Lineupscreen> createState() => _LineupscreenState();
}

class _LineupscreenState extends State<Lineupscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
         backgroundColor: Color.fromARGB(255, 24, 24, 41),
         body: Column(children: [
          SizedBox(height: 30.h,),
          Row(
            children: [
              SizedBox(width: 100.w,),
              Text('Formation',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w400),),
               SizedBox(width: 10.w,),
              Text('(4-2-3-1)',style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
            ],
          ),
          SizedBox(height: 20.h,),
          Row(
            children: [
              SizedBox(width: 20.w,),
              Container(
                      width: 280.w,
                      height: 40.h,
                      child: TabBar(
                        tabs: [
                          Tab(
                            text: 'Arsenal',
                          ),
                          Tab(
                            text: 'Aston villa',
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
                    
            ],
          ),
          Expanded(child: TabBarView(children: [
            Container(
              child: Column(children: [
                SizedBox(height: 30.h,),
                Container(
                height: 350.h,
                width: 320.w,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),  color: Colors.cyan,),
              
              )],),
            ),
            Container(),
          ]))


         ],),
      
      
      ),
    );
  }
}