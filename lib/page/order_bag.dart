// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rimt/page/payment_page.dart';
import 'package:rimt/widget/add_button.dart';

class OrderBag extends StatefulWidget {
  const OrderBag({Key? key}) : super(key: key);

  @override
  _OrderBagState createState() => _OrderBagState();
}

List<OrderBagItems> item = [
  OrderBagItems(Icon: Icons.check_box, foodItem: "Rajma Rice", prize: "65"),
  OrderBagItems(Icon: Icons.check_box, foodItem: "Mutton Rice", prize: "200"),
];

class _OrderBagState extends State<OrderBag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0xffC73532),
        ),
        actions: [
          Image.asset(
            'assets/image/orderbag.png',
            scale: 1.5,
          ),
        ],
        centerTitle: true,
        title: Text(
          'Order Bag',
          style: TextStyle(fontSize: 20, color: Color(0xff504B4B)),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.2, 5],
              colors: [Colors.white, Colors.red]),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Image.asset(
                'assets/image/rimt_logo.png',
                scale: 4,
              ),
            ),

            // YOUR BAG CONTAINER STARTS HERE.

            // Padding(
            //   padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            //   child: Container(
            //     width: MediaQuery.of(context).size.width,
            //     decoration: BoxDecoration(
            //         border: Border.all(
            //             color: const Color.fromARGB(55, 112, 112, 112)),
            //         color: Colors.white,
            //         borderRadius: const BorderRadius.all(
            //           Radius.circular(10),
            //         ),
            //         boxShadow: const [
            //           BoxShadow(
            //             spreadRadius: -5,
            //             blurRadius: 5,
            //           )
            //         ]),
            //     child: Column(
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.symmetric(
            //               horizontal: 20, vertical: 10),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: [
            //               Image.asset(
            //                 'assets/image/orderbag.png',
            //                 scale: 1.5,
            //               ),
            //               const SizedBox(width: 20),
            //               const Text(
            //                 'Your Bag',
            //                 style: TextStyle(
            //                     color: Color(0xff504B4B),
            //                     fontSize: 15,
            //                     fontFamily: 'Roboto',
            //                     fontWeight: FontWeight.w500),
            //               ),
            //             ],
            //           ),
            //         ),

            //         //BILL IMAGE

            //         // Container(
            //         //   height: 400,
            //         //   width: 600,
            //         //   decoration: BoxDecoration(
            //         //       image: DecorationImage(
            //         //           fit: BoxFit.contain,
            //         //           image: AssetImage('assets/image/billimg.png'))),

            //         // ),
            //       ],
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  ListView.builder(
                    physics: AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: item.length,
                    itemBuilder: (BuildContext contex, index) {
                      return NewWidget(
                        i: index,
                      );
                    },
                  ),
                ],
              ),
            ),
            Spacer(),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'PRIZE DETAILS',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(' (2 Items)'),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Text('Total MRP'),
                        Spacer(),
                        Text('₹ 300'),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text('Packaging Charges'),
                        Spacer(),
                        Text('₹ 300'),
                      ],
                    ),
                    Divider(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Total Amount',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Text(
                          '₹ 300',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentPage()));
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
                    child: Text("Proceed To Pay",
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 15,
                          fontFamily: 'Roboto',
                        )),
                  )),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatefulWidget {
  NewWidget({
    Key? key,
    required this.i,
  }) : super(key: key);
  final int i;

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  bool ischeck = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(55, 112, 112, 112)),
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
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => setState(() {
                    ischeck = !ischeck;
                  }),
                  child: Icon(
                    ischeck ? Icons.check_box : Icons.check_box_outline_blank,
                    color: Colors.blue.shade700,
                  ),
                ),
                SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.elementAt(widget.i).foodItem,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w400)),
                    SizedBox(height: 10),
                    Text(
                      "₹ 150",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.close,
                      size: 20,
                    ),
                    SizedBox(height: 10),
                    CountButton(),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class OrderBagItems {
  late String foodItem, prize;
  IconData Icon;
  OrderBagItems(
      {required this.Icon, required this.foodItem, required this.prize});
}
