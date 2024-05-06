import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fotball_app/components/bottomnavbar.dart';


class Splash2screen extends StatefulWidget {
  const Splash2screen({super.key});

  @override
  State<Splash2screen> createState() => _Splash2screenState();
}

class _Splash2screenState extends State<Splash2screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 24, 41),
      body: Column(
        children: [
          SizedBox(
            height: 90.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 25.w,
              ),
              Text(
                'Whats sports do\nyou intrest',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 25.w,
              ),
              Text(
                'You can choose more than one',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 45.r,
                    backgroundColor: Color.fromARGB(255, 232, 126, 60),
                    child: Image.asset(
                      'assets/images/img2.png',
                      height: 45.h,
                      width: 45.w,
                    ),
                  ),
                  Text(
                    'Soccer',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 45.r,
                    backgroundColor: Color.fromARGB(255, 53, 49, 73),
                    child: Image.asset(
                      'assets/images/img3.png',
                      height: 45.h,
                      width: 45.w,
                    ),
                  ),
                  Text(
                    'Basketball',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 45.r,
                    backgroundColor: Color.fromARGB(255, 53, 49, 73),
                    child: Image.asset(
                      'assets/images/img4.png',
                      height: 45.h,
                      width: 45.w,
                    ),
                  ),
                  Text(
                    'Fotball',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 30.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 45.r,
                    backgroundColor: Color.fromARGB(255, 53, 49, 73),
                    child: Image.asset(
                      'assets/images/img5.png',
                      height: 45.h,
                      width: 45.w,
                    ),
                  ),
                  Text(
                    'Baseball',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 45.r,
                    backgroundColor: Color.fromARGB(255, 53, 49, 73),
                    child: Image.asset(
                      'assets/images/img6.png',
                      height: 45.h,
                      width: 45.w,
                    ),
                  ),
                  Text(
                    'Tennies',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 45.r,
                    backgroundColor: Color.fromARGB(255, 53, 49, 73),
                    child: Image.asset(
                      'assets/images/img7.png',
                      height: 45.h,
                      width: 45.w,
                    ),
                  ),
                  Text(
                    'Volleyball',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 130.h,
          ),
          Container(
            padding:
                EdgeInsets.only(right: 130.w, left: 130.w, top: 10.h, bottom: 10.h),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 78, 50, 234),
              borderRadius: BorderRadius.all(Radius.circular(15.r)),
            ),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Bottomnav()));
                },
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 18.sp),
                )),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Skip',
            style: TextStyle(
                color: Colors.white,
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: .5.sp),
          )
        ],
      ),
    );
  }
}
