
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fotball_app/screens/splashscreen2.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  // ignore: unused_field
  bool _obsercuretext = true;

  bool? ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 24, 41),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 90.h,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Container(
                    width: 360.w,
                    height: 350.h,
                  ),
                ),
                Positioned(
                  left: 50.w,
                  top: 50.h,
                  child: Container(
                    height: 290.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(30, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(55.r)),
                    ),
                  ),
                ),
                Positioned(
                    left: 30.w,
                    bottom: 10.h,
                    child: Image.asset(
                      'assets/images/img1.png',
                      height: 355.h,
                      width: 355.w,
                    )),
                Positioned(
                    left: 70.w,
                    child: CircleAvatar(
                        radius: 10.r, backgroundColor: Colors.white)),
                Positioned(
                    top: 320.h,
                    left: 60.w,
                    child: CircleAvatar(
                        radius: 11.r, backgroundColor: Colors.white)),
                Positioned(
                    top: 220.h,
                    left: 336.w,
                    child: CircleAvatar(
                      radius: 15.r,
                      backgroundColor: Color.fromARGB(255, 52, 0, 242),
                    ))
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  'Discover all\nabout sports',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  'Search millions of jobs and get the\ninside scoop on companies.\nWait for what? Let’s get start it!',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40.w,
                ),
                Container(
                  padding:
                      EdgeInsets.only(right: 70.w, left: 70.w, top: 10.h, bottom: 10.h),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 78, 50, 234),
                    borderRadius: BorderRadius.all(Radius.circular(15.r)),
                  ),
                  child: TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: Color.fromARGB(255, 53, 49, 73),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.r),
                            topRight: Radius.circular(30.r),
                          )),
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Welcome',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 27.r,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Container(
                                    width: 350.w,
                                    height: 70.h,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 35, 35, 45),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(13.r)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: 'Email',
                                            hintStyle: TextStyle(
                                                fontSize: 17.sp,
                                                color: Colors.grey),
                                            prefixIcon: Icon(
                                              Icons.mail_outlined,
                                              color: Colors.grey,
                                            ),
                                            border: InputBorder.none),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Container(
                                    width: 350.w,
                                    height: 70.h,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 35, 35, 45),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(13)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: 'Password',
                                            hintStyle: TextStyle(
                                                fontSize: 17.sp,
                                                color: Colors.grey),
                                            prefixIcon: Icon(
                                              Icons.key,
                                              color: Colors.grey,
                                            ),
                                            suffixIcon:isshowing(),
                                            border: InputBorder.none),
                                        obscureText: _obsercuretext,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Checkbox(
                                          value: ischecked,
                                          
                                          onChanged: (val) {
                                            setState(() {
                                              ischecked = val;
                                            });
                                          }),
                                      Text(
                                        'Remember me',
                                        style: TextStyle(
                                            fontSize: 15.sp, color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 80.w,
                                      ),
                                      Text(
                                        'Forgot Password',
                                        style: TextStyle(
                                            fontSize: 15.sp, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        right: 130.w,
                                        left: 130.w,
                                        top: 10.h,
                                        bottom: 10.h),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 78, 50, 234),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15.r)),
                                    ),
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Splash2screen()));
                                        },
                                        child: Text(
                                          'Sign in',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.sp),
                                        )),
                                  ),
                                  SizedBox(
                                    height: 13.h,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 90.w,
                                      ),
                                      Text(
                                        'Don\'t have account?',
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 193, 190, 190),
                                            fontSize: 16.sp),
                                      ),
                                      Text(
                                        'Sign up',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 78, 50, 234),
                                            fontSize: 16),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(color: Colors.white, fontSize: 18.sp),
                      )),
                ),
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  'Sign up',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 193, 190, 190),
                      fontSize: 18.sp),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget isshowing(){
  return IconButton(onPressed: (){
     setState(() {
                                                  _obsercuretext =
                                                      !_obsercuretext;
                                                });
  }, icon: _obsercuretext?Icon(Icons.visibility):Icon(Icons.visibility_off));
}
}

