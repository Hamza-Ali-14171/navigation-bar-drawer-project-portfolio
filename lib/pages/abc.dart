import 'package:flutter/material.dart';
import 'package:navigation_bar_drawer/pages/list_builder.dart';

class Abc extends StatelessWidget {
  static const String id = 'abc';
  const Abc({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Center(
                child: Text(
              'Scrolling',
              style: TextStyle(color: Colors.white),
            ))),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 150,
                child: ListBuilder(
                  scrollDirection: Axis.horizontal,
                  color: Colors.purple,
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: ListBuilder(
                        scrollDirection: Axis.vertical,
                        color: Colors.yellow,
                        itemCount: 10)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
