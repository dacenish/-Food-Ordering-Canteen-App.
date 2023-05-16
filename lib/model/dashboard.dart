import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
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
    );
  }
}
