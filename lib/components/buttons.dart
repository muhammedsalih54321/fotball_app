
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key, required this.img, required this.name, required this.color});
  
  final String img;
  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return  Container(
                  height: 120,width: 115,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: color ),
                child: Column(children: [
                  SizedBox(height: 25,),
                  Image.asset(
                      img,
                      height: 45,
                      width: 45,
                    ),
                     SizedBox(height: 10,),
                     Text(
                    name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  )

                ],),);
  }
}