
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Exploretile extends StatelessWidget {
  const Exploretile({super.key, required this.img, required this.name,  required this.sub});
  
  final String img;
  final String name;
  final String sub;

  @override
  Widget build(BuildContext context) {
    return ListTile(
              leading:Container(height: 90.h,width: 60.w,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),
              image: DecorationImage(image: AssetImage(img),fit: BoxFit.cover)
              ),
              ) ,
              title: Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14.sp),),
              subtitle:  Text(sub,style: TextStyle(color: const Color.fromARGB(255, 199, 197, 197),fontWeight: FontWeight.w500,fontSize: 11.sp),),
              trailing: Icon(Icons.bookmark_outline_outlined,color: Colors.grey,size: 30.sp,),
            );
  }
}