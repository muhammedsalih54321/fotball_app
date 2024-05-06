

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Teamscore extends StatelessWidget {
  const Teamscore({super.key, required this.img1, required this.img2, required this.name1, required this.score1, required this.name2, required this.score2, required this.text});

  final String img1;
  final String img2;
  final String name1;
  final String score1;
  final String name2;
  final String score2;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Container(
                  height: 70.h,width: 350.w,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromARGB(255, 53, 49, 73)),
                child: Row(children: [
                  
                   SizedBox(
              width: 45.w,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: 19.r,
                  backgroundColor:  Color.fromARGB(255, 24, 24, 41),
                  child: Image.asset(
                    img1,
                    height: 23.h,
                    width: 23.w,
                  ),
                ),
                Positioned(
                    right: 30,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 21.r,
                          backgroundColor:Color.fromARGB(255, 53, 49, 73),
                        ),
                        Positioned(
                          top: 1.5,
                          left: 1.5,
                          child: CircleAvatar(
                            radius: 19.r,
                            backgroundColor:  Color.fromARGB(255, 24, 24, 41),
                            child: Image.asset(
                              img2,
                              height: 23.h,
                              width: 23.r,
                            ),
                          ),
                        )
                      ],
                    ))
              ],
            ),
                  
                  SizedBox(width: 20.w,),
                  Column(children: [
                    SizedBox(height: 15.h,),
                    Text(name1,style: TextStyle(color: Colors.white,fontSize: 13.sp),),
                     Text(score1,style: TextStyle(color: Colors.white,fontSize: 13.sp),)
                    
                    
                    ],),
                    SizedBox(width: 4.w,),
                    Column(children: [
                    SizedBox(height: 15.h,),
                    Text('vs',style: TextStyle(color: Colors.white,fontSize: 13.sp),),
                     Text('-',style: TextStyle(color: Colors.white,fontSize: 13.sp),)
                    
                    
                    ],),
                      SizedBox(width: 4.w,),
                    Column(children: [
                    SizedBox(height: 15.h,),
                    Text(name2,style: TextStyle(color: Colors.white,fontSize: 13.sp),),
                     Text(score2,style: TextStyle(color: Colors.white,fontSize: 13.sp),)
                    
                    
                    ],),
                    SizedBox(width: 45.w,),
                     Text(text,style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w500),)

                ],),
        );
  }
}