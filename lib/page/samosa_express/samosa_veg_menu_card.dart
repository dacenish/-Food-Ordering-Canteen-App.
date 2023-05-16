import 'package:flutter/material.dart';
import 'samosa_menu_card.dart';
import 'package:rimt/main.dart';

class SamosaVegMenuCard extends StatefulWidget {
  const SamosaVegMenuCard({Key? key}) : super(key: key);

  @override
  _SamosaVegMenuCardState createState() => _SamosaVegMenuCardState();
}

int _count = 1 ;
bool swap = false;



class _SamosaVegMenuCardState extends State<SamosaVegMenuCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
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
                  padding:
                       EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rajma Rice'),
                      SizedBox(width: 30),
                      Text('₹' '150'),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            swap = !swap;
                          });
                        },
                       
                        child:  swap ? CounterButton() : CounterButtonPlain() ,
                        ),

                      
                    ],
                  ),
                ),
              ),
            )
          ]);
        }
        );
  }
}

class CounterButton extends StatefulWidget {
  const CounterButton({Key? key}) : super(key: key);

  @override
  _CounterButtonState createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    if (_count < 1) {
      return;
    }
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 80,
        decoration: const BoxDecoration(
            color: Color(0xff32C725),
            borderRadius: BorderRadius.all(Radius.circular(10))
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
                onTap: () {
                  _decrementCount();
                },
                child: const Icon(Icons.remove, color: Colors.white)),
            Text("$_count"),
            GestureDetector(
                onTap: () {
                  _incrementCount();
                },
                child: const  Icon(Icons.add, color: Colors.white)),
          ],
        ));
  }
}

class CounterButtonPlain extends StatefulWidget {
  const CounterButtonPlain({Key? key}) : super(key: key);

  @override
  _CounterButtonPlainState createState() => _CounterButtonPlainState();
}

class _CounterButtonPlainState extends State<CounterButtonPlain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 80,
      decoration: BoxDecoration(
          border: Border.all(color:const  Color(0xffCB3236)),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const  [
          Text('Add', style: TextStyle(color: Color(0xffCB3236))),
          Icon(Icons.add, color: Color(0xffCB3236))
        ],
      ),
    );
  }
}
