import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:fotball_app/components/taemscoretile.dart';
import 'package:fotball_app/components/teamtile.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}
// final screens =[Homescreen(),Exprolescreen(),Standingscreen(),Profitescreen()];

//   int currentindex = 0;

class _HomescreenState extends State<Homescreen> {
  List<String> img = [
    'assets/images/img2.png',
    'assets/images/img3.png',
    'assets/images/img4.png',
    'assets/images/img5.png',
    'assets/images/img6.png',
    'assets/images/img7.png'
  ];
   List<String> name = [
  'Soccer',
  'Basketball',
  'Football',
  'Baseball',
  'Tennis',
  'Volleyball'
  ];
  int selectedindex = -1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 24, 24, 41),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 24, 24, 41),
          title: Text(
            'LiveScore',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.sp),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.search,
                  color: Colors.white,
                  size: 24.sp,
                )),
            Stack(clipBehavior: Clip.none, children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.bell,
                    color: Colors.white,
                    size: 24.sp,
                  )),
              Container(
                child: Positioned(
                  left: 25.w,
                  top: 10.h,
                  child: CircleAvatar(
                    radius: 5.r,
                    backgroundColor: Color.fromARGB(255, 232, 126, 60),
                  ),
                ),
              )
            ]),
            SizedBox(
              width: 10.w,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 10.h,
            ),
            CarouselSlider(
              items: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 160.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 62, 58, 255),
                      ),
                    ),
                    Positioned(
                        left: 147.w,
                        bottom: 6.h,
                        top: 0,
                        child: Image.asset(
                          'assets/images/img8.png',
                          height: 250.h,
                          width: 250.w,
                        )),
                    Container(
                      height: 200.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Row(
                              children: [
                                Container(
                                  height: 30.h,
                                  width: 87.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/img2.png',
                                          height: 15.h,
                                          width: 15.w,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          'Football',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 13.sp),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                'Liverpool UEFA\nChampion League\nCelebration',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                'Yesterday, 06.30 PM',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
              options: CarouselOptions(
                height: 170.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 900),
                viewportFraction: 1.5,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(height: 125.h,
            child:Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index){
                return GestureDetector(
                  onTap: () => setState(() {
                    selectedindex = index;
                  }),
                  
                  child: Container(
                    height: 120.h,width: 115.w,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: selectedindex == index? Color.fromARGB(255, 232, 126, 60):Color.fromARGB(255, 53, 49, 73)), 
                  child: Column(children: [
                    SizedBox(height: 25.h,),
                    Image.asset(
                        img[index],
                        height: 45.h,
                        width: 45.w,
                      ),
                       SizedBox(height: 10.h,),
                       Text(
                      name[index],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    )
              
                  ],),) ,);
              }, separatorBuilder:  (BuildContext context, int index){
                return SizedBox(width: 10.w,);
              }, itemCount: img.length),
            ) ,
            )


            ,SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Teamytile(
                  name: 'La Liga', sub: 'Spain', img: 'assets/images/img9.png'),
            ),
            Teamscore(
                img1: 'assets/images/img10.png',
                img2: 'assets/images/img11.png',
                name1: ' Barcelona',
                score1: '2',
                name2: 'Real madrid',
                score2: '0',
                text: 'HT'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Teamytile(
                  name: 'Premier League',
                  sub: 'England',
                  img: 'assets/images/img12.png'),
            ),
            Teamscore(
                img1: 'assets/images/img13.png',
                img2: 'assets/images/img14.png',
                name1: ' Aston villa',
                score1: '2',
                name2: 'Liverpool',
                score2: '3',
                text: 'FT'),
                SizedBox(height: 10.h,),
                Teamscore(
                img1: 'assets/images/img13.png',
                img2: 'assets/images/img14.png',
                name1: ' Aston villa',
                score1: '1',
                name2: 'Liverpool',
                score2: '2',
                text: 'FT'),
          ]),
        )
        ,
        
        );
  }
}
