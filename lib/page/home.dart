// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rimt/model/dashboard.dart';
import 'package:rimt/page/user_profile.dart';
import 'package:rimt/widget/popup_menu.dart';
import 'package:rimt/model/canteen_list.dart';

import '../model/logo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.2, 5],
              colors: [Colors.white, Colors.red]),
        ),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          shrinkWrap: false,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Logo(),
            ),

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
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 120, top: 10),
                            child: Column(
                              children: [
                                Text(
                                  'Danish Zia',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff504B4B),
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '19-B.CSE-299',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff504B4B),
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        left: 23,
                        top: -38,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const UserProfile()));
                          },
                          child: CircleAvatar(
                              radius: 42,
                              backgroundColor: Color(0xff2C5273),
                              foregroundImage: AssetImage(
                                'assets/image/avatar.png',
                              )),
                        ),
                      ),
                      const PopupMenu(),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Dashboard(),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),

            // PROFILE SECTION ENDS HERE

            const SizedBox(height: 15),

            const Divider(
              indent: 20,
              endIndent: 20,
              thickness: 0.5,
              height: 0,
            ),

            const SizedBox(height: 15),
            const CanteenList(),
          ],
        ),
      ),
    );
  }
}
