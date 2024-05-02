import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fotball_app/screens/splashscreen2.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  // ignore: unused_field
  bool _obsercuretext = true;

  bool? ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 24, 41),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Container(
                    width: 360,
                    height: 350,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Container(
                    height: 290,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(30, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(55)),
                    ),
                  ),
                ),
                Positioned(
                    left: 30,
                    bottom: 10,
                    child: Image.asset(
                      'assets/images/img1.png',
                      height: 355,
                      width: 355,
                    )),
                Positioned(
                    left: 70,
                    child: CircleAvatar(
                        radius: 12, backgroundColor: Colors.white)),
                Positioned(
                    top: 320,
                    left: 60,
                    child: CircleAvatar(
                        radius: 11, backgroundColor: Colors.white)),
                Positioned(
                    top: 220,
                    left: 336,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Color.fromARGB(255, 52, 0, 242),
                    ))
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  'Discover all\nabout sports',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  'Search millions of jobs and get the\ninside scoop on companies.\nWait for what? Let’s get start it!',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Container(
                  padding:
                      EdgeInsets.only(right: 70, left: 70, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 78, 50, 234),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: Color.fromARGB(255, 53, 49, 73),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Welcome',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 27,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 350,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 35, 35, 45),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(13)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: 'Email',
                                            hintStyle: TextStyle(
                                                fontSize: 17,
                                                color: Colors.grey),
                                            prefixIcon: Icon(
                                              Icons.mail_outlined,
                                              color: Colors.grey,
                                            ),
                                            border: InputBorder.none),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 350,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 35, 35, 45),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(13)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: 'Password',
                                            hintStyle: TextStyle(
                                                fontSize: 17,
                                                color: Colors.grey),
                                            prefixIcon: Icon(
                                              Icons.key,
                                              color: Colors.grey,
                                            ),
                                            suffixIcon: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  _obsercuretext =
                                                      !_obsercuretext;
                                                });
                                              },
                                              child: Icon(_obsercuretext
                                                  ? Icons.visibility
                                                  : Icons.visibility_off),
                                            ),
                                            border: InputBorder.none),
                                        obscureText: _obsercuretext,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Checkbox(
                                          value: ischecked,
                                          onChanged: (newvalue) {
                                            setState(() {
                                              ischecked = newvalue;
                                            });
                                          }),
                                      Text(
                                        'Remember me',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 80,
                                      ),
                                      Text(
                                        'Forgot Password',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        right: 130,
                                        left: 130,
                                        top: 10,
                                        bottom: 10),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 78, 50, 234),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Splash2screen()));
                                        },
                                        child: Text(
                                          'Sign in',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        )),
                                  ),
                                  SizedBox(
                                    height: 13,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 90,
                                      ),
                                      Text(
                                        'Don\'t have account?',
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 193, 190, 190),
                                            fontSize: 16),
                                      ),
                                      Text(
                                        'Sign up',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 78, 50, 234),
                                            fontSize: 16),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  'Sign up',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 193, 190, 190),
                      fontSize: 18),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
