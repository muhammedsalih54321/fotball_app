import 'package:flutter/material.dart';
import 'package:fotball_app/screens/splashscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
     designSize: const Size(375, 812),
    builder:(BuildContext context,Widget?child){
    
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        
        home:Splashscreen(),
     );}
    );
  }
}
