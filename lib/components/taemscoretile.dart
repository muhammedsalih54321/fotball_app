

import 'package:flutter/material.dart';

class Teamscore extends StatelessWidget {
  const Teamscore({super.key, required this.img1, required this.img2, required this.name1, required this.score1, required this.name2, required this.score2, required this.text});

  final String img1;
  final String img2;
  final String name1;
  final String score1;
  final String name2;
  final String score2;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Container(
                  height: 70,width: 350,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromARGB(255, 53, 49, 73)),
                child: Row(children: [
                  SizedBox(width: 20,),
                  CircleAvatar(radius: 19,
                  backgroundColor: Color.fromARGB(255, 24, 24, 41) ,
                  child: Image.asset(img1,height: 23,width: 23,),
                  ),
                   CircleAvatar(radius: 19,
                  backgroundColor: Color.fromARGB(255, 24, 24, 41) ,
                  child: Image.asset(img2,height: 23,width: 23,),
                  ),
                  
                  SizedBox(width: 20,),
                  Column(children: [
                    SizedBox(height: 15,),
                    Text(name1,style: TextStyle(color: Colors.white,fontSize: 13),),
                     Text(score1,style: TextStyle(color: Colors.white,fontSize: 13),)
                    
                    
                    ],),
                    SizedBox(width: 4,),
                    Column(children: [
                    SizedBox(height: 15,),
                    Text('vs',style: TextStyle(color: Colors.white,fontSize: 13),),
                     Text('-',style: TextStyle(color: Colors.white,fontSize: 13),)
                    
                    
                    ],),
                      SizedBox(width: 4,),
                    Column(children: [
                    SizedBox(height: 15,),
                    Text(name2,style: TextStyle(color: Colors.white,fontSize: 13),),
                     Text(score2,style: TextStyle(color: Colors.white,fontSize: 13),)
                    
                    
                    ],),
                    SizedBox(width: 40,),
                     Text(text,style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),)

                ],),
        );
  }
}