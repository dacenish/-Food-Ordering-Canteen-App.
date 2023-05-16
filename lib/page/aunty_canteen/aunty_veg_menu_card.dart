import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rimt/widget/add_button.dart';
import 'aunty_menu_card.dart';
import 'package:rimt/main.dart';

class AuntyVegMenuCard extends StatefulWidget {
  const AuntyVegMenuCard({Key? key}) : super(key: key);

  @override
  _AuntyVegMenuCardState createState() => _AuntyVegMenuCardState();
}

class MenuItem {
  late String fooditem, prize;

  MenuItem({required this.fooditem, required this.prize});
}

class _AuntyVegMenuCardState extends State<AuntyVegMenuCard> {
  List<MenuItem> item = [
    MenuItem(fooditem: "Bread Pakoda", prize: "15"),
    MenuItem(fooditem: "Samosa", prize: "10"),
    MenuItem(fooditem: "Veg Patty", prize: "20"),
    MenuItem(fooditem: "Cheese Patty", prize: "30"),
    MenuItem(fooditem: "Stuffed Paratha", prize: "50"),
    MenuItem(fooditem: "Bread Omlette", prize: "20"),
    MenuItem(fooditem: "Rajma Rice", prize: "65"),
    MenuItem(fooditem: "Veg Chowmin", prize: "50"),
    MenuItem(fooditem: "Veg Macroni", prize: "70"),
    MenuItem(fooditem: "Fried Rice", prize: "70"),
    MenuItem(fooditem: "Manchurian Rice", prize: "70"),
    MenuItem(fooditem: "Cheese Chilly", prize: "65"),
    MenuItem(fooditem: "Channa Kulcha", prize: "50"),
    MenuItem(fooditem: "Channa Bhatura", prize: "50"),
    MenuItem(fooditem: "Grill Sandwich", prize: "50"),
    MenuItem(fooditem: "Red Sauce Pasta", prize: "90"),
    MenuItem(fooditem: "White Sauce Pasta", prize: "65"),
    MenuItem(fooditem: "Paneer Partha", prize: "90"),
    MenuItem(fooditem: "Veg Biryani", prize: "60"),
    MenuItem(fooditem: "Cheese Chilly", prize: "70"),
    MenuItem(fooditem: "Spring Roll", prize: "60"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: item.length,
        itemBuilder: (_, i) {
          return Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color(0xff504B4B),
                      width: 0.1,
                      style: BorderStyle.solid,
                    ),
                    bottom: BorderSide(
                      color: Color(0xff504B4B),
                      width: 0.1,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        item.elementAt(i).fooditem,
                        style: const TextStyle(
                          color: Color(0xff504B4B),
                          fontFamily: 'Roboto',
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 30),
                      Spacer(),
                      Text(
                        '₹',
                      ),
                      Text(
                        item.elementAt(i).prize,
                        style: const TextStyle(
                          color: Color(0xff504B4B),
                          fontFamily: 'Roboto',
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 10),
                      const AddButton()
                    ],
                  ),
                ),
              ),
            )
          ]);
        });
  }
}
