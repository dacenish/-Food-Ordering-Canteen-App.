import 'package:flutter/material.dart';

class AddButton extends StatefulWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  State<AddButton> createState() => _AddButtonState();
}

int _count = 0;
bool isZero = true;

class _AddButtonState extends State<AddButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
          onTap: () {
            setState(() {
              isZero = false;
              _count++;
            });
          },
          child: isZero == false
              ? Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffCB3236)),
                      color: Color.fromARGB(45, 203, 50, 55),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              _count--;
                              if (_count == 0) {
                                setState(() {
                                  isZero = true;
                                });
                              }
                            });
                          },
                          child: const Icon(
                            Icons.remove,
                            color: Color(0xffCB3236),
                            size: 20,
                          )),
                      Text(
                        "$_count",
                        style: TextStyle(
                          color: Color(0xffCB3236),
                          fontSize: 15,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              _count++;
                            });
                          },
                          child: const Icon(
                            Icons.add,
                            color: Color(0xffCB3236),
                            size: 20,
                          )),
                    ],
                  ))
              : Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(45, 203, 50, 55),
                      border: Border.all(
                          color: const Color(0xffCB3236), width: 0.5),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text('Add', style: TextStyle(color: Color(0xffCB3236))),
                      Icon(
                        Icons.add,
                        color: Color(0xffCB3236),
                        size: 20,
                      )
                    ],
                  ),
                )),
    );
  }
}

class CountButton extends StatefulWidget {
  const CountButton({Key? key}) : super(key: key);

  @override
  State<CountButton> createState() => _CountButtonState();
}

class _CountButtonState extends State<CountButton> {
  int _count = 1;

  bool isZero = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffCB3236)),
            color: Color.fromARGB(45, 203, 50, 55),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    _count--;
                    if (_count == 0) {
                      setState(() {
                        isZero = true;
                      });
                    }
                  });
                },
                child: const Icon(
                  Icons.remove,
                  color: Color(0xffCB3236),
                  size: 20,
                )),
            Text(
              "$_count",
              style: TextStyle(
                color: Color(0xffCB3236),
                fontSize: 15,
              ),
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    _count++;
                  });
                },
                child: const Icon(
                  Icons.add,
                  color: Color(0xffCB3236),
                  size: 20,
                )),
          ],
        ));
  }
}
