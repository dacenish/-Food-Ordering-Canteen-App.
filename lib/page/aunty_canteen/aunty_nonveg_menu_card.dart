import 'package:rimt/main.dart';
import 'package:flutter/material.dart';
import 'package:rimt/widget/add_button.dart';
import 'aunty_menu_card.dart';

class AuntyNonvegMenucard extends StatefulWidget {
  const AuntyNonvegMenucard({ Key? key }) : super(key: key);

  @override
  _AuntyNonvegMenucardState createState() => _AuntyNonvegMenucardState();
}

class _AuntyNonvegMenucardState extends State<AuntyNonvegMenucard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const  [
                      Text('Chicken Rice'),
                      SizedBox(width: 30),
                      Text('₹' '200'),
                      AddButton()
                    ],
                  ),
                ),
              ),
            )
          ]);
        });
  }
}