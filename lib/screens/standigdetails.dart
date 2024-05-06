import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Standingdetails extends StatefulWidget {
  const Standingdetails({super.key});

  @override
  State<Standingdetails> createState() => _StandingdetailsState();
}

class _StandingdetailsState extends State<Standingdetails> {
  List<String> name = ['All', 'Home', 'Away'];

  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 24, 41),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 18.w,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20.sp,
                      )),
                  SizedBox(
                    width: 80.w,
                  ),
                  Image.asset(
                    'assets/images/img9.png',
                    height: 18.h,
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'Spain',
                    style: TextStyle(color: Colors.white, fontSize: 17.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              CircleAvatar(
                radius: 60.r,
                backgroundColor: Color.fromARGB(255, 35, 35, 45),
                child: Image.asset(
                  'assets/images/img36.png',
                  height: 90.h,
                  width: 90.w,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'La Liga',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: SizedBox(
                    height: 55.h,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () => setState(() {
                              selected = index;
                            }),
                            child: Container(
                              width: 100.w,
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(30.r),
                                color: selected == index
                                    ? Color.fromARGB(255, 223, 140, 88)
                                    : Color.fromARGB(255, 24, 24, 41),
                              ),
                              child: Center(
                                child: Text(
                                  name[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp),
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 6.w,
                          );
                        },
                        itemCount: name.length)),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    '#    Team',
                    style: TextStyle(color: Colors.white, fontSize: 15.sp),
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                  Text(
                    'D',
                    style: TextStyle(color: Colors.white, fontSize: 15.sp),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'L',
                    style: TextStyle(color: Colors.white, fontSize: 15.sp),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'Ga',
                    style: TextStyle(color: Colors.white, fontSize: 15.sp),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'Gd',
                    style: TextStyle(color: Colors.white, fontSize: 15.sp),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'Pts',
                    style: TextStyle(color: Colors.white, fontSize: 15.sp),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Divider(
                  thickness: 1.2.sp,
                  color: Color.fromARGB(255, 35, 35, 45),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 50.h,
                width: 340.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(15),
                    color: Color.fromARGB(255, 40, 94, 138)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      '1',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                    Image.asset(
                      'assets/images/img33.png',
                      height: 20.h,
                      width: 20.w,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Atlético Madrid',
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Text(
                      '2',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: 21.w,
                    ),
                    Text(
                      '1',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: 23.w,
                    ),
                    Text(
                      '6',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    Text(
                      '23',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    Text(
                      '38',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
               height: 50.h,
                width: 340.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(15),
                    color: Color.fromARGB(255, 40, 94, 138)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      '2',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Image.asset(
                      'assets/images/img11.png',
                      height: 18.h,
                      width: 20.w,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Real Madrid',
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    ),
                    SizedBox(
                      width: 50.w,
                    ),
                    Text(
                      '2',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: 21.w,
                    ),
                    Text(
                      '3',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: 23.w,
                    ),
                    Text(
                      '7',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    Text(
                      '15',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    Text(
                      '37',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
                Container(
                height: 50.h,
                width: 340.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(15),
                    color: Color.fromARGB(255, 40, 94, 138)),
                child:  Row(children: [
                 SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      '3',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                    SizedBox(width: 5.w,),
                    

                 Image.asset('assets/images/img10.png',height: 17.h,width: 17.w),
                  SizedBox(width: 5.w,),

                Text('Barcelona',style:TextStyle(color: Colors.white,fontSize: 14.sp),),
                SizedBox(width: 64.w,),
                 Text('4',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                 SizedBox(width: 21.w,),
                 Text('4',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                  SizedBox(width: 23.w,),
                  Text('9',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                   SizedBox(width: 25.w,),
                   Text('20',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                    SizedBox(width: 25.w,),
                    Text('34',style:TextStyle(color: Colors.white,fontSize: 15.sp),)
               
               
               ],),),
                SizedBox(height: 10.h,),
                Container(
                height: 50.h,
                width: 340.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(15),
                    color: Color.fromARGB(255, 160, 61, 61)),
                child: Row(children: [
                  SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      '4',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                    SizedBox(width: 5.w,),
                    
                 Image.asset('assets/images/img34.png',height: 17.h,width: 17.w,),
                  SizedBox(width: 5.w,),

                Text('Villareal',style:TextStyle(color: Colors.white,fontSize: 14.sp),),
                SizedBox(width: 76.w,),
                 Text('8',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                 SizedBox(width: 21.w,),
                 Text('2',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                  SizedBox(width: 22.w,),
                  Text('10',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                   SizedBox(width: 21.w,),
                   Text('16',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                    SizedBox(width: 22.w,),
                    Text('32',style:TextStyle(color: Colors.white,fontSize: 15.sp),)
               
               
               ],), ),
                SizedBox(height: 10.h,),
                Container(
                height: 50.h,
                width: 340.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(15),
                    color: Color.fromARGB(255, 160, 61, 61)),
                child: Row(children: [
                  SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      '5',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                    SizedBox(width: 5.w,),
                    
                 Image.asset('assets/images/img37.png',height: 17.h,width: 17.w,),
                  SizedBox(width: 5.w,),

                Text('Real Sociedad',style:TextStyle(color: Colors.white,fontSize: 14.sp),),
                SizedBox(width: 37.w,),
                 Text('6',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                 SizedBox(width: 21.w,),
                 Text('5',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                  SizedBox(width: 22.w,),
                  Text('13',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                   SizedBox(width: 21.w,),
                   Text('13',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                    SizedBox(width: 22.w,),
                    Text('30',style:TextStyle(color: Colors.white,fontSize: 15.sp),)
               
               
               ],), ),
               SizedBox(height: 10.h,),
                Container(
               height: 50.h,
                width: 340.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(15),
                    color: Color.fromARGB(255, 24, 24, 41),),
                child: Row(children: [
                  SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      '6',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                    SizedBox(width: 9.w,),
                    
                 Image.asset('assets/images/img38.png',height: 17.h,width: 17.w,),
                  SizedBox(width: 7.w,),

                Text('Sevilla',style:TextStyle(color: Colors.white,fontSize: 14.sp),),
                SizedBox(width: 80.w,),
                 Text('3',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                 SizedBox(width: 21.w,),
                 Text('4',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                  SizedBox(width: 22.w,),
                  Text('15',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                   SizedBox(width: 21.w,),
                   Text('12',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                    SizedBox(width: 22.w,),
                    Text('30',style:TextStyle(color: Colors.white,fontSize: 15.sp),)
               
               
               ],), ),
                 SizedBox(height: 5.h,),
                Container(
                 height: 50.h,
                width: 340.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(15),
                    color: Color.fromARGB(255, 24, 24, 41),),
                child: Row(children: [
                  SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      '7',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                    SizedBox(width: 9.w,),
                    
                 Image.asset('assets/images/img39.png',height: 17.h,width: 17.w,),
                  SizedBox(width: 7.w,),

                Text('Granda',style:TextStyle(color: Colors.white,fontSize: 14.sp),),
                SizedBox(width: 77.w,),
                 Text('3',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                 SizedBox(width: 21.w,),
                 Text('7',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                  SizedBox(width: 22.w,),
                  Text('20',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                   SizedBox(width: 21.w,),
                   Text('11',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                    SizedBox(width: 22.w,),
                    Text('24',style:TextStyle(color: Colors.white,fontSize: 15.sp),)
               
               
               ],), ),
                SizedBox(height: 5.h,),
                Container(
                height: 50.h,
                width: 340.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(15),
                    color: Color.fromARGB(255, 24, 24, 41),),
                child: Row(children: [
                  SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      '8',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                    SizedBox(width: 9.w,),
                    
                 Image.asset('assets/images/img40.png',height: 17.h,width: 17.w,),
                  SizedBox(width: 7.w,),

                Text('Celta Vigo',style:TextStyle(color: Colors.white,fontSize: 14.sp),),
                SizedBox(width: 56.w,),
                 Text('5',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                 SizedBox(width: 22.w,),
                 Text('7',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                  SizedBox(width: 23.w,),
                  Text('25',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                   SizedBox(width: 24.w,),
                   Text('8',style:TextStyle(color: Colors.white,fontSize: 15.sp),),
                    SizedBox(width: 24.w,),
                    Text('23',style:TextStyle(color: Colors.white,fontSize: 15.sp),)
               
               
               ],), )
            ],
          ),
        ),
      ),
    );
  }
}
