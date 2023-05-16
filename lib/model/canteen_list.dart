// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:rimt/page/aunty_canteen/aunty_menu_card.dart';
import 'package:rimt/page/samosa_express/samosa_menu_card.dart';

class CanteenList extends StatefulWidget {
  const CanteenList({Key? key}) : super(key: key);

  @override
  _CanteenListState createState() => _CanteenListState();
}

class _CanteenListState extends State<CanteenList> {
  List<Canteen> canList = [
    Canteen(imgCanteen: 'auntycanteen', nameCanteen: 'IET Canteen'),
    Canteen(imgCanteen: 'auntycanteen', nameCanteen: 'Samosa Express'),
    Canteen(imgCanteen: 'cafeluscious', nameCanteen: 'Cafe lusious'),
    Canteen(imgCanteen: 'auntycanteen', nameCanteen: 'Kashmir Canteen'),
    Canteen(imgCanteen: 'auntycanteen', nameCanteen: 'Dumpling Hood'),
    Canteen(imgCanteen: 'auntycanteen', nameCanteen: 'Nescafe'),
    Canteen(imgCanteen: 'auntycanteen', nameCanteen: 'Amul'),
    Canteen(imgCanteen: 'auntycanteen', nameCanteen: 'Bharosa Food'),
    Canteen(imgCanteen: 'auntycanteen', nameCanteen: 'Dumpling Hood'),
  ];

  List<Widget> route = [AuntyOrderMenu(), SamosaOrderMenu()];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(55, 112, 112, 112)),
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                spreadRadius: -5,
                blurRadius: 5,
              )
            ]),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text('Choose Canteen To Place Order',
                  style: TextStyle(
                    color: Color(0xff504B4B),
                    fontFamily: 'Roboto',
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              thickness: 0.5,
              height: 0,
            ),

            // List of the canteen starts from here

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 5,
                    childAspectRatio: 0.7,
                  ),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: canList.length,
                  itemBuilder: (_, i) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => route[i]));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(
                                'assets/image/${canList.elementAt(i).imgCanteen}.png',
                              )),
                          const SizedBox(
                            height: 15,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              canList.elementAt(i).nameCanteen,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xff504B4B),
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          // const Padding(
                          //   padding: EdgeInsets.only(top: 15),
                          //   child: Divider(
                          //     thickness: 0.5,
                          //     height: 0,
                          //   ),
                          // ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}

class Canteen {
  late String imgCanteen, nameCanteen;

  Canteen({required this.imgCanteen, required this.nameCanteen});
}
