
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fotball_app/screens/standigdetails.dart';

class Standingscreen extends StatefulWidget {
  const Standingscreen({super.key});

  @override
  State<Standingscreen> createState() => _StandingscreenState();
}

class _StandingscreenState extends State<Standingscreen> {

   List<String> img = [
    'assets/images/img41.png',
    'assets/images/img42.png',
    'assets/images/img43.png',
    'assets/images/img44.png',
  
  ];
   List<String> name = [
  
  'live Score',
  'live Score',
  'live Score',
  'live Score',
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    
        backgroundColor: Color.fromARGB(255, 24, 24, 41),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
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
                        hintText: 'Search your competition ...',
                        hintStyle:
                            TextStyle(fontSize: 16.sp, color: Colors.grey),
                        prefixIcon: IconButton(onPressed: (){}, icon: Icon(
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
                child: ListView.separated(
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
            SizedBox(height: 10.h,),
            
                  ListTile(
          leading:Image.asset('assets/images/img9.png',height: 30.h,
          width: 30.w,) ,
          title: Text('La Liga',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),),
          subtitle: Text('Spain',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 13),),
        
          trailing: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Standingdetails()));}, icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,),)
        ),
           
           Container(height: 215.h,width: 330.w,decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(18),color: Color.fromARGB(255, 35, 35, 45),),
           child: Column(
             children: [
              SizedBox(height: 25.h,),
               Row(children: [
                 SizedBox(width: 20.w,),
                Text('Teams',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                SizedBox(width: 110.w,),
                Text('D',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                 SizedBox(width: 20.w,),
                 Text('L',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                  SizedBox(width: 20.w,),
                  Text('Ga',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                   SizedBox(width: 20.w,),
                   Text('Gd',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                    SizedBox(width: 20.w,),
                    Text('Pts',style:TextStyle(color: Colors.white,fontSize: 12.sp),)
               
               
               ],),
               Padding(
                 padding: const EdgeInsets.only(right: 0,left: 155),
                 child: Divider(thickness: .9.sp,color:  Color.fromARGB(255, 24, 24, 41),),
               ),
                SizedBox(height: 10.h,),
               Row(children: [
                 SizedBox(width: 10.w,),
                 Image.asset('assets/images/img33.png',height: 20.h,width: 20.w,),
                  SizedBox(width: 5.w,),

                Text('Atlético Madrid',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                SizedBox(width: 50.w,),
                 Text('2',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                 SizedBox(width: 21.w,),
                 Text('1',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                  SizedBox(width: 23.w,),
                  Text('6',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                   SizedBox(width: 25.w,),
                   Text('23',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                    SizedBox(width: 25.w,),
                    Text('38',style:TextStyle(color: Colors.white,fontSize: 12.sp),)
               
               
               ],),
               Padding(
                 padding: const EdgeInsets.only(right: 0,left: 155),
                 child: Divider(thickness: .9.sp,color:  Color.fromARGB(255, 24, 24, 41),),
               ),
                  
               Row(children: [
                 SizedBox(width: 10.w,),
                 Image.asset('assets/images/img11.png',height: 18.h,width: 20.w,),
                  SizedBox(width: 5.w,),

                Text('Real Madrid',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                SizedBox(width: 70.w,),
                 Text('2',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                 SizedBox(width: 21.w,),
                 Text('3',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                  SizedBox(width: 23.w,),
                  Text('7',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                   SizedBox(width: 25.w,),
                   Text('15',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                    SizedBox(width: 25.w,),
                    Text('37',style:TextStyle(color: Colors.white,fontSize: 12.sp),)
               
               
               ],),
               Padding(
                 padding: const EdgeInsets.only(right: 0,left: 155),
                 child: Divider(thickness: .9.sp,color:  Color.fromARGB(255, 24, 24, 41),),
               ),
               
               Row(children: [
                 SizedBox(width: 15.w,),
                 Image.asset('assets/images/img10.png',height: 17.h,width: 17.w),
                  SizedBox(width: 5.w,),

                Text('Barcelona',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                SizedBox(width: 78.w,),
                 Text('4',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                 SizedBox(width: 21.w,),
                 Text('4',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                  SizedBox(width: 23.w,),
                  Text('9',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                   SizedBox(width: 25.w,),
                   Text('20',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                    SizedBox(width: 25.w,),
                    Text('34',style:TextStyle(color: Colors.white,fontSize: 12.sp),)
               
               
               ],),
               Padding(
                 padding: const EdgeInsets.only(right: 0,left: 155),
                 child: Divider(thickness: .9.sp,color:  Color.fromARGB(255, 24, 24, 41),),
               ),
                 
               Row(children: [
                 SizedBox(width: 15.w,),
                 Image.asset('assets/images/img34.png',height: 17.h,width: 17.w,),
                  SizedBox(width: 5.w,),

                Text('Villareal',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                SizedBox(width: 90.w,),
                 Text('8',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                 SizedBox(width: 21.w,),
                 Text('2',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                  SizedBox(width: 22.w,),
                  Text('10',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                   SizedBox(width: 21.w,),
                   Text('16',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                    SizedBox(width: 22.w,),
                    Text('32',style:TextStyle(color: Colors.white,fontSize: 12.sp),)
               
               
               ],),
               Padding(
                 padding: const EdgeInsets.only(right: 0,left: 155),
                 child: Divider(thickness: .9.sp,color:  Color.fromARGB(255, 24, 24, 41),),
               )
             ],
           ),
           ),
           SizedBox(height: 5.h,),
       

          ListTile(
          leading:Image.asset('assets/images/img12.png',height: 30.h,
          width: 30.w,) ,
          title: Text('Premier League',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),),
          subtitle: Text('England',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 13),),
        
          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,),)
        ),
                   SizedBox(height: 5.h,),
                   Container(height: 215.h,width: 330.w,decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(18),color: Color.fromARGB(255, 35, 35, 45),),
           child: Column(
             children: [
              SizedBox(height: 25.h,),
               Row(children: [
                 SizedBox(width: 20.w,),
                Text('Teams',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                SizedBox(width: 110.w,),
                Text('D',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                 SizedBox(width: 20.w,),
                 Text('L',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                  SizedBox(width: 20.w,),
                  Text('Ga',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                   SizedBox(width: 20.w,),
                   Text('Gd',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                    SizedBox(width: 20.w,),
                    Text('Pts',style:TextStyle(color: Colors.white,fontSize: 12.sp),)
               
               
               ],),
               Padding(
                 padding: const EdgeInsets.only(right: 0,left: 155),
                 child: Divider(thickness: .9.sp,color:  Color.fromARGB(255, 24, 24, 41),),
               ),
                SizedBox(height: 10.h,),
               Row(children: [
                 SizedBox(width: 10.w,),
                 Image.asset('assets/images/img14.png',height: 20.h,width: 20.w,),
                  SizedBox(width: 5.w,),

                Text('Liverpool',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                SizedBox(width: 80.w,),
                 Text('6',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                 SizedBox(width: 21.w,),
                 Text('2',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                  SizedBox(width: 23.w,),
                  Text('21',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                   SizedBox(width: 23.w,),
                   Text('16',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                    SizedBox(width: 23.w,),
                    Text('33',style:TextStyle(color: Colors.white,fontSize: 12.sp),)
               
               
               ],),
               Padding(
                 padding: const EdgeInsets.only(right: 0,left: 155),
                 child: Divider(thickness: .9.sp,color:  Color.fromARGB(255, 24, 24, 41),),
               ),
                  
               Row(children: [
                 SizedBox(width: 10.w,),
                 Image.asset('assets/images/img16.png',height: 18.h,width: 20.w,),
                  SizedBox(width: 5.w,),

                Text('Man united',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                SizedBox(width: 69.w,),
                 Text('3',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                 SizedBox(width: 21.w,),
                 Text('3',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                  SizedBox(width: 23.w,),
                  Text('24',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                   SizedBox(width: 25.w,),
                   Text('9',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                    SizedBox(width: 25.w,),
                    Text('33',style:TextStyle(color: Colors.white,fontSize: 12.sp),)
               
               
               ],),
               Padding(
                 padding: const EdgeInsets.only(right: 0,left: 155),
                 child: Divider(thickness: .9.sp,color:  Color.fromARGB(255, 24, 24, 41),),
               ),
               
               Row(children: [
                 SizedBox(width: 12.w,),
                 Image.asset('assets/images/img35.png',height: 17.h,width: 17.w),
                  SizedBox(width: 5.w,),

                Text('Leicester City',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                SizedBox(width: 58.w,),
                 Text('2',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                 SizedBox(width: 21.w,),
                 Text('5',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                  SizedBox(width: 23.w,),
                  Text('21',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                   SizedBox(width: 21.w,),
                   Text('10',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                    SizedBox(width: 22.w,),
                    Text('32',style:TextStyle(color: Colors.white,fontSize: 12.sp),)
               
               
               ],),
               Padding(
                 padding: const EdgeInsets.only(right: 0,left: 155),
                 child: Divider(thickness: .9.sp,color:  Color.fromARGB(255, 24, 24, 41),),
               ),
                 
               Row(children: [
                 SizedBox(width: 15.w,),
                 Image.asset('assets/images/img34.png',height: 17.h,width: 17.w,),
                  SizedBox(width: 5.w,),

                Text('Villareal',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                SizedBox(width: 85.w,),
                 Text('8',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                 SizedBox(width: 21.w,),
                 Text('2',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                  SizedBox(width: 22.w,),
                  Text('10',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                   SizedBox(width: 21.w,),
                   Text('16',style:TextStyle(color: Colors.white,fontSize: 12.sp),),
                    SizedBox(width: 22.w,),
                    Text('32',style:TextStyle(color: Colors.white,fontSize: 12.sp),)
               
               
               ],),
               Padding(
                 padding: const EdgeInsets.only(right: 0,left: 155),
                 child: Divider(thickness: .9.sp,color:  Color.fromARGB(255, 24, 24, 41),),
               )
             ],
           ),
           ),

          ]
          )
          )
          )
          );
  }
}