import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Articlepage extends StatefulWidget {
  const Articlepage({super.key});

  @override
  State<Articlepage> createState() => _ArticlepageState();
}

class _ArticlepageState extends State<Articlepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 24, 41),
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
          height: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35)),
              image: DecorationImage(
                  image: AssetImage('assets/images/pic1.png'),
                  fit: BoxFit.cover)),
          child: Stack(
            children: [
              Container(
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              )),
                          Column(
                            children: [
                              CircleAvatar(
                                  radius: 25.r,
                                  backgroundColor:
                                      Color.fromARGB(134, 135, 133, 142),
                                  child: Icon(
                                    Icons.share_outlined,
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                height: 15.h,
                              ),
                              CircleAvatar(
                                  radius: 25.r,
                                  backgroundColor:
                                     Color.fromARGB(255, 223, 140, 88),
                                  child: Icon(
                                    Icons.bookmark_outline_outlined,
                                    color: Colors.white,

                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 28.w,
            ),
            Text(
              'Arsenal vs Aston Villa\nprediction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23.sp,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 20.w,
            ),
            CircleAvatar(
              radius: 20.r,
              backgroundImage: AssetImage('assets/images/img32.png'),
            ),
            SizedBox(
              width: 5.w,
            ),
            Column(
              children: [
                Text(
                  '    Brian imanuel',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp),
                ),
                Text(
                  'may 15,2020',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 198, 196, 196),
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp),
                )
              ],
            ),
            SizedBox(
              width: 90.w,
            ),
            Row(
              children: [
                Icon(
                  CupertinoIcons.heart,
                  color: Colors.white,
                  size: 15.sp,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  '1403',
                  style: TextStyle(color: Colors.white, fontSize: 13.sp),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Icon(
                  CupertinoIcons.chat_bubble_text,
                  color: Colors.white,
                  size: 15.sp,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  '976',
                  style: TextStyle(color: Colors.white, fontSize: 13.sp),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'A',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 45.sp),
                      ),
                      SizedBox(
                        width: 18.w,
                      ),
                      Text(
                        'rsenal will have to grind it out against\nAston Villa if they are to register',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            height: 1.7.h),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'League wins. The match is scheduled for\nSunday at the Emirates.',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            height: 1.7.h),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'The Gunners put forth a real statement of\nintent after their 1-0 win against Manchester\nUnited.Mikel Arteta\'s side had already surre\nndered points to Liverpool,Manchester City\nand ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            height: 1.7.h),
                      )
                    ],
                  ),
                  Container(
                    height: 40,
                    color: Color.fromARGB(255, 24, 24, 41),
                  )
                ],
              ),
            ),
            Positioned(
                top: 180.h,
                left: 50.w,
                child: Container(

                  padding: EdgeInsets.only(
                      right: 80.w, left: 80.w, top: 18.h, bottom: 18.h),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(blurRadius: 300,offset: Offset(0, 10))
                    ],
                    color: Color.fromARGB(255, 223, 140, 88),
                    borderRadius: BorderRadius.all(Radius.circular(30.r)),
                  ),
                  child: Row(children: [
                    Text('Read More',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w500),),
                    Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white,size: 30.sp,)
                  ],),
                )
                
                )
          ],
        )
      ])),
    );
  }
}
