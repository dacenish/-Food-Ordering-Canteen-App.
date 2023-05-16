import 'package:flutter/material.dart';
import 'package:rimt/main.dart';

class PopupMenu extends StatefulWidget {
  const PopupMenu({Key? key}) : super(key: key);

  @override
  _PopupMenuState createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10),
      child: Align(
        alignment: Alignment.topRight,
        child: PopupMenuButton(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const Icon(Icons.more_vert),
            itemBuilder: (context) => [
                  const PopupMenuItem(child: Text('Edit'), value: 1),
                  const PopupMenuItem(child: Text('Setting'), value: 2),
                  const PopupMenuItem(child: Text('More'), value: 3),
                ]),
      ),
    );
  }
}
