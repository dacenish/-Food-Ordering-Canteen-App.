import 'package:flutter/material.dart';

class DividerWiget extends StatelessWidget {
  const DividerWiget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      indent: 20,
      endIndent: 20,
      // color: Color.fromARGB(138, 158, 158, 158),
      height: 0.5,
    );
  }
}
