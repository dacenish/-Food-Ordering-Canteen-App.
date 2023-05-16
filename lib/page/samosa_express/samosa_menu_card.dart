import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rimt/widget/popup_menu.dart';
import 'package:rimt/widget/search_bar.dart';
import 'package:rimt/model/tab_bar.dart';

import '../order_bag.dart';

class SamosaOrderMenu extends StatefulWidget {
  const SamosaOrderMenu({Key? key}) : super(key: key);

  @override
  _SamosaOrderMenuState createState() => _SamosaOrderMenuState();
}

class _SamosaOrderMenuState extends State<SamosaOrderMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.2, 5],
                colors: [Colors.white, Colors.red]),
          ),
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              SizedBox(
                height: 100,
                child: Image.asset(
                  'assets/image/rimt_logo.png',
                  scale: 4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: -5,
                          blurRadius: 10,
                        )
                      ]),
                  child: Column(
                    children: [
                      Stack(clipBehavior: Clip.none, children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 120, top: 20),
                              child: Text(
                                'Samosa Express',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff504B4B),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              flex: 0,
                              child: Divider(
                                indent: 20,
                                endIndent: 20,
                                thickness: 0.5,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const Positioned(
                          left: 23,
                          top: -38,
                          child: CircleAvatar(
                              radius: 42,
                              backgroundColor: Color(0xff2C5273),
                              foregroundImage: AssetImage(
                                'assets/image/auntycanteen.png',
                              )),
                        ),
                        const PopupMenu(),
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, bottom: 15, left: 30, right: 30),
                            child: Image.asset('assets/image/menu.png',
                                scale: 1.5),
                          ),
                          const Text(
                            'MENU CARD',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff504B4B),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const Expanded(
                        flex: 0,
                        child: Divider(
                          indent: 20,
                          endIndent: 20,
                          thickness: 0.5,
                          height: 0,
                        ),
                      ),
                      const SizedBox(height: 15),

                      //  Search Bar here

                      const SearchBar(),
                      const SizedBox(height: 15),

                      //  TAPBAR STARTS HERE

                      const MenuTabbar(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OrderBag()));
                  }),
                  child: Container(
                      height: 41,
                      width: 323,
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
                        child: Text("Check Out",
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 15,
                              fontFamily: 'Roboto',
                            )),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
