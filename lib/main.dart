// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore_for_file: prefer const constructors, prefer_const_constructors, camel_case_types
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rimt/page/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rimt/page/splash_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen()));
}

// ignore: camel_case_types
class Loading_Page extends StatefulWidget {
  const Loading_Page({Key? key}) : super(key: key);

  @override
  _Loading_PageState createState() => _Loading_PageState();
}

class _Loading_PageState extends State<Loading_Page> {
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
    return SplashScreen();
  }
}
