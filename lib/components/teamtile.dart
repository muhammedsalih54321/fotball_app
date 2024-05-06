
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fotball_app/screens/matchdetails.dart';

class Teamytile extends StatelessWidget {
  const Teamytile({super.key, required this.name, required this.sub, required this.img});
  final String name;
   final String sub;
    final String img;
     



  @override
  Widget build(BuildContext context) {
    return  ListTile(
          leading:Image.asset(img,height: 30.h,
          width: 30.w,) ,
          title: Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),),
          subtitle: Text(sub,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 13),),
        
          trailing: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Matchdetails()));}, icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,),)
        );
  }
}