import 'package:flutter/material.dart';
import 'package:fotball_app/screens/homescreen.dart';

class Splash2screen extends StatefulWidget {
  const Splash2screen({super.key});

  @override
  State<Splash2screen> createState() => _Splash2screenState();
}

class _Splash2screenState extends State<Splash2screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 24, 41),
      body: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Text(
                'Whats sports do\nyou intrest',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Text(
                'You can choose more than one',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Color.fromARGB(255, 232, 126, 60),
                    child: Image.asset(
                      'assets/images/img2.png',
                      height: 45,
                      width: 45,
                    ),
                  ),
                  Text(
                    'Soccer',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Color.fromARGB(255, 53, 49, 73),
                    child: Image.asset(
                      'assets/images/img3.png',
                      height: 45,
                      width: 45,
                    ),
                  ),
                  Text(
                    'Basketball',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Color.fromARGB(255, 53, 49, 73),
                    child: Image.asset(
                      'assets/images/img4.png',
                      height: 45,
                      width: 45,
                    ),
                  ),
                  Text(
                    'Fotball',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Color.fromARGB(255, 53, 49, 73),
                    child: Image.asset(
                      'assets/images/img5.png',
                      height: 45,
                      width: 45,
                    ),
                  ),
                  Text(
                    'Baseball',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Color.fromARGB(255, 53, 49, 73),
                    child: Image.asset(
                      'assets/images/img6.png',
                      height: 45,
                      width: 45,
                    ),
                  ),
                  Text(
                    'Tennies',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Color.fromARGB(255, 53, 49, 73),
                    child: Image.asset(
                      'assets/images/img7.png',
                      height: 45,
                      width: 45,
                    ),
                  ),
                  Text(
                    'Volleyball',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 130,
          ),
          Container(
            padding:
                EdgeInsets.only(right: 130, left: 130, top: 10, bottom: 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 78, 50, 234),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homescreen()));
                },
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Skip',
            style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w400,
                letterSpacing: .5),
          )
        ],
      ),
    );
  }
}
