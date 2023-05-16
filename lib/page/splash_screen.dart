import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                stops: [0.5, 10],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.red,
                ]),
          ),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 350,
                ),
                Image.asset(
                  'assets/image/rimt_logo.png',
                  scale: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Text('RIMT',
                    style: TextStyle(
                      color: Color(0xffC73438),
                      fontFamily: 'Roboto',
                      fontSize: 77,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                    )),
                Text(
                  'UNIVERSITY',
                  style: TextStyle(
                    color: Color(0xff2E5176),
                    fontFamily: 'Roboto',
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    height: 0.5,
                  ),
                ),
                Text(
                  'CANTEEN',
                  style: TextStyle(
                    color: Color(0xffC73438),
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    height: 2,
                  ),
                ),
                // const CircularProgressIndicator(
                //   backgroundColor: Colors.red,
                //   color: Colors.blue,
                // ),
              ],
            ),
          ),
        ));
  }
}
