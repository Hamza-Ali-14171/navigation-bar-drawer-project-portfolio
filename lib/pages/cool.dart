import 'package:flutter/material.dart';

class Cool extends StatelessWidget {
  static const String id = 'cool';
  const Cool({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('hdsjds')),
      ),
      body: Stack(alignment: Alignment.bottomRight, children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(color: Colors.blueGrey),
          child: Center(child: Text('container 1')),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(color: Colors.lightGreen),
          child: Center(child: Text('container 2')),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(color: Colors.redAccent),
          child: Center(child: Text('container 3')),
        ),
      ]),
    );
  }
}
