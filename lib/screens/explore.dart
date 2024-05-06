import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fotball_app/components/exploretile.dart';
import 'package:fotball_app/screens/searchpage.dart';

class Exprolescreen extends StatefulWidget {
  const Exprolescreen({super.key});

  @override
  State<Exprolescreen> createState() => _ExprolescreenState();
}

class _ExprolescreenState extends State<Exprolescreen> {
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
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 24, 41),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Container(
                width: 340.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 35, 35, 45),
                  borderRadius: BorderRadius.all(Radius.circular(13.r)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search for news, team, match, etc...',
                        hintStyle:
                            TextStyle(fontSize: 16.sp, color: Colors.grey),
                        prefixIcon: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Searchpage()));}, icon: Icon(
                          CupertinoIcons.search,
                          color: Colors.grey,
                        ),),
                        border: InputBorder.none),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: SizedBox(
                height: 50.h,
                child:ListView.separated(
                  scrollDirection: Axis.horizontal,
                  
                  itemBuilder: (BuildContext context,int index){
                  return GestureDetector(
                    onTap: () => setState(() {
                      selectedindex = index;
                    }),
                    child:selectedindex==index?Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(30.r),color:Color.fromARGB(255, 223, 140, 88)),
                    child: Row(children: [Image.asset(img[index],height: 40.h,width: 40.w,),SizedBox(width: 5.w,),Text(name[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15.sp),)],),
                    ):Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(40.r),color:  Color.fromARGB(255, 35, 35, 45)),
                    child: Row(children: [Image.asset(img[index],height: 40.h,width: 40.w,),SizedBox(width: 5.w,)]),
                    ),
                  );
                }, separatorBuilder: (BuildContext context,int index){
                  return SizedBox(width: 10.w,);
                }, itemCount: img.length) 
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Exploretile(
                img: 'assets/images/img20.png',
                name: 'Roumor Has It: Lampard’s\nposition under threat, ...',
                sub: '04 JAN 2021, 14:16'),
            SizedBox(
              height: 5.h,
            ),
            Exploretile(
                img: 'assets/images/img21.png',
                name: 'Artrta sees ‘natural leader’\nTierney as a future, ...',
                sub: '04 JAN 2021, 05:30'),
            SizedBox(
              height: 5.h,
            ),
            Exploretile(
                img: 'assets/images/img22.png',
                name:
                    'Athletic Bilbao to appoint\nMarcelino as coach until, ...',
                sub: '04 JAN 2021, 09:23'),
            SizedBox(
              height: 5.h,
            ),
            Exploretile(
                img: 'assets/images/img23.png',
                name:
                    'Barcelona suffer too much\nlate in games, says Ter Stegen',
                sub: '04 JAN 2021, 06:06'),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 18.w,
                ),
                Text(
                  'Trending News',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/img24.png',
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Arsenal vs Aston Villa\nprediction',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'May 15, 2020',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/img25.png',
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Arsenal vs Aston Villa\nprediction',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'May 15, 2020',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
