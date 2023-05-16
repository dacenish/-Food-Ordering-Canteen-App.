// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:rimt/widget/divider.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

List<PaymentCardElements> item = [
  PaymentCardElements(
      paymentModeImage: 'debit-card',
      paymentModeName: 'Debit/Credit Card',
      paymentModeDescription: 'Pay securely on your payment sites'),
  PaymentCardElements(
      paymentModeImage: 'cash-on-delivery',
      paymentModeName: 'Cash On Delivery',
      paymentModeDescription: 'Pay Directly Through Cash'),
  PaymentCardElements(
      paymentModeImage: 'upi',
      paymentModeName: 'UPI',
      paymentModeDescription: 'Pay Directly Through Your UPI App on your Phone')
];

class _PaymentPageState extends State<PaymentPage> {
  late int billTotal = 150;

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
        centerTitle: true,
        title: Text(
          'Payment',
          style: TextStyle(fontSize: 20, color: Color(0xff000000)),
        ),
        actions: [
          Image.asset(
            'assets/image/cardlogo.png',
            scale: 1.5,
            color: Color(0xffC73532),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.2, 5],
              colors: [Colors.white, Color(0xffC73532)]),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
                child: Image.asset(
                  'assets/image/rimt_logo.png',
                  scale: 4,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Ordered By:',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(55, 112, 112, 112)),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(2),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        spreadRadius: -5,
                        blurRadius: 5,
                      )
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Color(0xffC73532),
                        size: 35,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Danish Zia',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(children: [
                            Text(
                              'Order ID:',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              ' 1234567',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ])
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Selected Payment Method:',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              SizedBox(height: 5),
              ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: item.length,
                itemBuilder: (BuildContext contex, index) {
                  return PaymentMethod(i: index);
                },
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
                          Text('₹ 0'),
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
              Container(
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
                    "Pay",
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 15,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentCardElements {
  late String paymentModeImage;
  late String paymentModeName;
  late String paymentModeDescription;
  PaymentCardElements(
      {required this.paymentModeImage,
      required this.paymentModeName,
      required this.paymentModeDescription});
}

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key, required this.i}) : super(key: key);
  final int i;

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(55, 112, 112, 112)),
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isCheck = !isCheck;
                    });
                  },
                  child: isCheck
                      ? Icon(Icons.radio_button_checked_rounded,
                          color: Colors.blue.shade700)
                      : Icon(Icons.radio_button_off,
                          color: Colors.blue.shade700)),
              SizedBox(width: 10),
              Image.asset(
                  'assets/image/${item.elementAt(widget.i).paymentModeImage}.png',
                  scale: 3),
              SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.elementAt(widget.i).paymentModeName),
                  SizedBox(height: 5),
                  Text(
                    item.elementAt(widget.i).paymentModeDescription,
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
