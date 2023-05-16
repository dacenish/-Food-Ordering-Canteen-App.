// ignore_for_file: file_names

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rimt/page/sign_up.dart';
import 'sign_in.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      // Gradient Body
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 10],
              colors: [
                Colors.white,
                Colors.red,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 130,
              ),
              Image.asset(
                'assets/image/rimt_logo.png',
                scale: 3,
              ),
              const SizedBox(
                height: 60,
              ),
              //Box starts here
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
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
                  //Student Box
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                          },
                          child: Container(
                            height: 50,
                            decoration: const BoxDecoration(
                                color: Color(0xffC73532),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10,
                                    spreadRadius: -5,
                                    offset: Offset(4, 4),
                                  ),
                                ]),
                            child: const Center(
                              child: Text(
                                'Student',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xffffffff),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Flexible(
                              child: Divider(
                                color: Color(0xff9B9B9B),
                                thickness: 0.7,
                                indent: 160,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'OR',
                              style: TextStyle(
                                  color: Color(0xff9B9B9B),
                                  fontFamily: 'Roboto',
                                  fontSize: 12),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Divider(
                                color: Color(0xff9B9B9B),
                                thickness: 0.7,
                                endIndent: 160,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // Canteen Owner Box Starts here
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            decoration: const BoxDecoration(
                                color: Color(0xffC73532),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10,
                                    spreadRadius: -5,
                                    offset: Offset(4, 4),
                                  ),
                                ]),
                            child: const Center(
                              child: Text(
                                'Canteen Owner',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xffffffff),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                        // const SizedBox(
                        //   height: 30,
                        // ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
