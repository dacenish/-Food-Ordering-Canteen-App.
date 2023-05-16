import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rimt/page/canteen_owner_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  List<Widget> body = [CanteenOwnerScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        child: Row(
          children: [
            Spacer(),
            BottomBarItem('Previous Order', 'assets/image/orderhistory.png', 6),
            VerticalDivider(),
            Spacer(),
            BottomBarItem('Current Order', 'assets/image/currentorder.png', 5),
            VerticalDivider(),
            Spacer(),
            BottomBarItem('Cancelled Order', 'assets/image/cancelorder.png', 4)
          ],
        ),
      ),
    );
  }
}

Container BottomBarItem(String text, String path, double scale) {
  return Container(
    height: 80,
    // width: MediaQuery.of(context).size.width / 3.5,
    color: Colors.white,
    child: Column(
      children: [
        SizedBox(height: 10),
        SizedBox(
          height: 25,
          child: Image.asset(
            path,
            scale: scale,
          ),
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(fontSize: 12),
        ),
      ],
    ),
  );
}
