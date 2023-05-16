// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rimt/page/home.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xffC73532),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 20, color: Color(0xff504B4B)),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.2, 5],
              colors: [Colors.white, Colors.red]),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          spreadRadius: -5,
                          blurRadius: 5,
                        )
                      ],
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/image/avatar.png'),
                          fit: BoxFit.scaleDown)),
                ),
                SizedBox(height: 20),
                Text('Danish Zia',
                    style: TextStyle(
                        color: Color(0xff504B4B),
                        fontSize: 24,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 5),
                Text(
                  '19-B.CSE-299',
                  style: TextStyle(color: Color(0xff504B4B)),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(55, 112, 112, 112)),
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          spreadRadius: -5,
                          blurRadius: 5,
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/image/favorite.png',
                              scale: 1.5,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Favorite',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff504B4B),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/image/orderbook.png',
                              scale: 1.5,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Order Book',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff504B4B),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/image/yourorder.png',
                              scale: 1.5,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Your Order',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff504B4B),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(55, 112, 112, 112)),
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          spreadRadius: -5,
                          blurRadius: 5,
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.email_outlined,
                              color: Color(0xffCB313B),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Email',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff504B4B),
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 5),
                                Text('zia.danish@ymail.com'),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Icon(
                              Icons.phone_android,
                              color: Color(0xffCB313B),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Phone',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff504B4B),
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 5),
                                Text('8287090829)'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Icon(
                              Icons.book_outlined,
                              color: Color(0xffCB313B),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Course',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff504B4B),
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 5),
                                Text('BTECH(CSE)'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                  },
                  child: Container(
                    height: 44,
                    decoration: const BoxDecoration(
                        color: Color(0xffC73532),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: -5,
                            blurRadius: 5,
                            offset: Offset(4, 4),
                          )
                        ]),
                    child: const Center(
                      child: Text(
                        "Log Out",
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 15,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
