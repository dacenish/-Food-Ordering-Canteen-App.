// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rimt/page/bottom_navigation.dart';

class CanteenOwnerScreen extends StatefulWidget {
  const CanteenOwnerScreen({Key? key}) : super(key: key);

  @override
  State<CanteenOwnerScreen> createState() => _CanteenOwnerScreenState();
}

class _CanteenOwnerScreenState extends State<CanteenOwnerScreen> {
  List<String> OrderCard = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(' Order Dashboard',
            style: TextStyle(fontSize: 20, color: Color(0xff504B4B))),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.2, 5],
              colors: [Colors.white, Colors.red]),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (_, i) {
              return Column(
                children: [
                  SizedBox(height: 20),
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
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/image/user.png'),
                                      fit: BoxFit.cover),
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Danish Zia',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff504B4B),
                                          fontWeight: FontWeight.w500)),
                                  Text(
                                    'Order no: 1234567',
                                    style: TextStyle(color: Color(0xff504B4B)),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle),
                              ),
                            ],
                          ),
                          SizedBox(height: Get.height / 100),
                          Row(
                            children: [
                              Text(
                                '1 x ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Color.fromARGB(195, 80, 75, 75)),
                              ),
                              Text(
                                'Rajma Chawal',
                                style: TextStyle(
                                    color: Color(0xff504B4B),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              Image.asset(
                                'assets/image/vegicon.png',
                                scale: 9,
                              )
                            ],
                          ),
                          SizedBox(height: Get.height / 100),
                          Row(
                            children: [
                              Text(
                                '1 x ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Color.fromARGB(195, 80, 75, 75)),
                              ),
                              Text(
                                'Chicken Biryani',
                                style: TextStyle(
                                    color: Color(0xff504B4B),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              Image.asset(
                                'assets/image/nonvegicon.png',
                                scale: 9,
                              )
                            ],
                          ),
                          SizedBox(height: Get.height / 200),
                          Divider(),
                          SizedBox(height: Get.height / 200),
                          Row(
                            children: [
                              Text(
                                '05 Oct 2022 at 08:30 PM',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(195, 80, 75, 75)),
                              ),
                              Spacer(),
                              Text(
                                '₹200',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff504B4B)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
