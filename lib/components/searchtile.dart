import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Searchtile extends StatelessWidget {
  const Searchtile(
      {super.key, required this.name, required this.sub, required this.img1, required this.img2});

  final String img1;
  final String img2;
  final String name;
  final String sub;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Container(
        height: 70.h,
        width: 350.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 24, 24, 41),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 10.w,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: 19.r,
                  backgroundColor: Color.fromARGB(255, 53, 49, 73),
                  child: Image.asset(
                    img1,
                    height: 23.h,
                    width: 23.w,
                  ),
                ),
                Positioned(
                    right: 30.w,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 20.r,
                          backgroundColor: Color.fromARGB(255, 24, 24, 41),
                        ),
                        Positioned(
                          top: 1.h,
                          left: 1.w,
                          child: CircleAvatar(
                            radius: 19.r,
                            backgroundColor: Color.fromARGB(255, 53, 49, 73),
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
            SizedBox(
              width: 20.w,
            ),
            Column(
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                ),
               
                Text(
                  sub,
                  style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                )
              ],
            ),
            SizedBox(
              width: 48.w,
            ),
            Icon(
              Icons.close,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
