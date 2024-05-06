import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profiletile extends StatelessWidget {
  const Profiletile({super.key, required this.icon, required this.name, required this.sub});

  final Icon icon;
  final String name;
  final String sub;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 20.r,
          backgroundColor: Color.fromARGB(255, 53, 49, 73),
          child: icon
        ),
        title: Text(
          name,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 14.sp),
        ),
        subtitle: Text(
          sub,
          style: TextStyle(
              color: const Color.fromARGB(255, 198, 196, 196),
              fontWeight: FontWeight.w500,
              fontSize: 12.sp),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
          size: 20,
        ),
      ),
    );
  }
}
